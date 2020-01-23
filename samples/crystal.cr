# Provides methods and classes for parsing and generating CSV
# (comma-separated values) strings.
#
# To create CSV data, check `CSV#build` and the `CSV::Builder` class.

class CSV
  DEFAULT_SEPARATOR  = ','
  DEFAULT_QUOTE_CHAR = '"'

  # Parses a CSV or `IO` into an array.
  #
  def self.parse(string_or_io : String | IO, separator : Char = DEFAULT_SEPARATOR, quote_char : Char = DEFAULT_QUOTE_CHAR) : Array(Array(String))
    Parser.new(string_or_io, separator, quote_char).parse
  end

  # Yields each of a CSV's rows as an `Array(String)`.
  #
  def self.each_row(string_or_io : String | IO, separator : Char = DEFAULT_SEPARATOR, quote_char : Char = DEFAULT_QUOTE_CHAR)
    Parser.new(string_or_io, separator, quote_char).each_row do |row|
      yield row
    end
  end

  # Returns an `Iterator` of `Array(String)` over a CSV's rows.
  #
  def self.each_row(string_or_io : String | IO, separator : Char = DEFAULT_SEPARATOR, quote_char : Char = DEFAULT_QUOTE_CHAR)
    Parser.new(string_or_io, separator, quote_char).each_row
  end

  # Builds a CSV. This yields a `CSV::Builder` to the given block.
  #
  # Takes optional *quoting* argument to define quote behavior.
  #
  def self.build(separator : Char = DEFAULT_SEPARATOR, quote_char : Char = DEFAULT_QUOTE_CHAR, quoting : Builder::Quoting = Builder::Quoting::RFC) : String
    String.build do |io|
      build(io, separator, quote_char, quoting) { |builder| yield builder }
    end
  end

  # Appends CSV data to the given `IO`. This yields a `CSV::Builder`
  # that writes to the given `IO`.
  #
  def self.build(io : IO, separator : Char = DEFAULT_SEPARATOR, quote_char : Char = DEFAULT_QUOTE_CHAR, quoting : Builder::Quoting = Builder::Quoting::RFC)
    builder = Builder.new(io, separator, quote_char, quoting)
    yield builder
  end

  @headers : Array(String)?
  @indices : Hash(String, Int32)?

  # Creates a new instance from the given `String` or `IO`.
  #
  def initialize(string_or_io : String | IO, headers = false, @strip = false, separator : Char = DEFAULT_SEPARATOR, quote_char : Char = DEFAULT_QUOTE_CHAR)
    @parser = Parser.new(string_or_io, separator, quote_char)
    if headers
      headers = @parser.next_row || ([] of String)
      headers = @headers = headers.map &.strip
      indices = @indices = {} of String => Int32
      headers.each_with_index do |header, index|
        indices[header] ||= index
      end
    end
    @traversed = false
  end

  # Creates a new instance from the given `String` or `IO`, and yields it to
  # the given block once for each row in the CSV.
  #
  def self.new(string_or_io : String | IO, headers = false, strip = false, separator : Char = DEFAULT_SEPARATOR, quote_char : Char = DEFAULT_QUOTE_CHAR)
    csv = new(string_or_io, headers, strip, separator, quote_char)
    csv.each do
      yield csv
    end
    csv
  end

  # Returns this CSV headers. Their values are always stripped.
  # Raises `CSV::Error` if headers were not requested.
  def headers : Array(String)
    @headers || raise(Error.new("Headers not requested"))
  end

  # Invokes the block once for each row in this CSV, yielding `self`.
  def each : Nil
    while self.next
      yield self
    end
  end

  # Advanced the cursor to the next row. Must be called once to position
  # the cursor in the first row. Returns `true` if a next row was found,
  # `false` otherwise.
  def next
    return false if @traversed

    row = @row ||= [] of String
    row.clear
    @row = @parser.next_row(row)
    if @row
      true
    else
      @traversed = true
      false
    end
  end

  # Returns the current row's value corresponding to the given *header* name.
  # Raises `KeyError` if no such header exists.
  # Raises `CSV::Error` if headers were not requested.
  def [](header : String) : String
    row_internal[header]
  end

  # Returns the current row's value corresponding to the given *header* name.
  # Returns `nil` if no such header exists.
  # Raises `CSV::Error` if headers were not requested.
  def []?(header : String) : String?
    row_internal[header]?
  end

  # Returns the current row's value at the given column index.
  # A negative index counts from the end.
  # Raises `IndexError` if no such column exists.
  def [](column : Int) : String
    row_internal[column]
  end

  # Returns the current row's value at the given column index.
  # A negative index counts from the end.
  # Returns `nil` if no such column exists.
  def []?(column : Int) : String?
    row_internal[column]?
  end

  # Returns the current row's value corresponding to the given *header_pattern*.
  # Raises `KeyError` if no such header exists.
  # Raises `CSV::Error` if headers were not requested.
  def [](header_pattern : Regex) : String
    row_internal[header_pattern]
  end

  # Returns the current row's value corresponding to the given *header_pattern*.
  # Returns `nil` if no such header exists.
  # Raises `CSV::Error` if headers were not requested.
  def []?(header_pattern : Regex) : String?
    row_internal[header_pattern]?
  end

  # Returns a tuple of the current row's values at given indices
  # A negative index counts from the end.
  # Raises `IndexError` if any column doesn't exist
  # The behavior of returning a tuple is similar to `Hash#values_at`
  def values_at(*columns : Int)
    columns.map { |column| row_internal[column] }
  end

  # Returns a tuple of the current row's values corresponding to the given *headers*
  # Raises `KeyError` if any header doesn't exist.
  # Raises `CSV::Error` if headers were not requested
  # The behavior of returning a tuple is similar to `Hash#values_at`
  def values_at(*headers : String)
    headers.map { |header| row_internal[header] }
  end

  # Returns the current row as a `Row` instance.
  def row : Row
    Row.new(self, current_row.dup)
  end

  private def row_internal
    Row.new(self, current_row)
  end

  private def current_row
    row = @row
    return row if row

    if @traversed
      raise Error.new("After last row")
    else
      raise Error.new("Before first row")
    end
  end

  # :nodoc:
  def indices
    @indices || raise(Error.new("Headers not requested"))
  end

  # :nodoc:
  getter? strip

  # :nodoc:
  def headers?
    @headers
  end

  # A Row of a `CSV::WithHeaders` instance.
  struct Row
    private getter csv : CSV
    @row : Array(String)

    # :nodoc:
    def initialize(@csv, @row)
    end

    # Returns the current row's value corresponding to the given *header* name.
    # Raises `KeyError` if no such header exists.
    # Raises `CSV::Error` if headers were not requested.
    def [](header : String) : String
      value = self.[]?(header)
      raise KeyError.new("Missing header: #{header}") unless value
      value
    end

    # Returns this row's value corresponding to the given *header* name.
    # Returns `nil` if no such header exists.
    # Raises `CSV::Error` if headers were not requested.
    def []?(header : String) : String?
      index = csv.indices[header]?
      if index
        maybe_strip(@row[index]? || "")
      else
        nil
      end
    end

    # Returns this row's value at the given column index.
    # A negative index counts from the end.
    # Raises `IndexError` if no such column exists.
    def [](column : Int) : String
      value = self.[]?(column)
      raise IndexError.new("Missing column index: #{column}") unless value
      value
    end

    # Returns this row's value at the given column index.
    # A negative index counts from the end.
    # Returns `nil` if no such column exists.
    def []?(column : Int) : String?
      size = csv.headers?.try(&.size) || @row.size

      column += size if column < 0

      value = @row[column]?
      value ||= "" if 0 <= column < size
      value ? maybe_strip(value) : nil
    end

    # Returns this row's value corresponding to the given *header_pattern*.
    # Raises `KeyError` if no such header exists.
    # Raises `CSV::Error` if headers were not requested.
    def [](header_pattern : Regex) : String
      value = self.[]?(header_pattern)
      raise KeyError.new("Missing header pattern: #{header_pattern}") unless value
      value
    end

    # Returns this row's value corresponding to the given *header_pattern*.
    # Returns `nil` if no such header exists.
    # Raises `CSV::Error` if headers were not requested.
    def []?(header_pattern : Regex) : String?
      csv.headers.each_with_index do |header, i|
        if header =~ header_pattern
          return maybe_strip(@row[i]? || "")
        end
      end
      nil
    end

    # Returns the number of columns in this row, regardless of the number
    # of headers (if requested).
    def size
      @row.size
    end

    # Converts this row to an `Array`.
    def to_a : Array(String)
      @row.map!(&.strip) if csv.strip?
      @row
    end

    # Converts this row to a `Hash`.
    def to_h : Hash(String, String)
      h = {} of String => String
      csv.headers.each_with_index do |header, i|
        h[header] = maybe_strip(@row[i]? || "")
      end
      h
    end

    # Returns a tuple of this row's values at given indices
    # A negative index counts from the end.
    # Raises `IndexError` if any column doesn't exist
    # The behavior of returning a tuple is similar to `Hash#values_at`
    def values_at(*columns : Int)
      columns.map { |column| self[column] }
    end

    # Returns a tuple of this row's values corresponding to the given *headers*
    # Raises `KeyError` if any header doesn't exist.
    # Raises `CSV::Error` if headers were not requested
    # The behavior of returning a tuple is similar to `Hash#values_at`
    def values_at(*headers : String)
      headers.map { |header| self[header] }
    end

    private def maybe_strip(value)
      csv.strip? ? value.strip : value
    end
  end
end

require "./csv/**"
