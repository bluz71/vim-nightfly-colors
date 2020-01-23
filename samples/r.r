# generate spaces of width n
spaces = function(n = 1, char = ' ') {
  if (n <= 0) return('')
  if (n == 1) return(char)
  paste(rep(char, n), collapse = '')
}

# group source lines into complete expressions (using a brutal-force method)
group_src = function(code) {
  if ((n <- length(code)) < 1) return(list(code))
  i = i1 = i2 = 1
  x = list()
  while (i2 <= n) {
    piece = code[i1:i2]
    if (try_parse(piece)) {
      x[[i]] = piece; i = i + 1
      i1 = i2 + 1 # start from the next line
    }
    i2 = i2 + 1
  }
  if (i1 <= n) parse(text = piece)  # must be an error there
  x
}

# whether a code expression can be parsed
try_parse = function(code, silent = TRUE) {
  !inherits(
    try(parse(text = code, keep.source = FALSE), silent = silent), 'try-error'
  )
}

# parse source and keep source
parse_source = function(lines) parse(text = lines, keep.source = TRUE)

# borrowed from knitr

# escape backslashes and {} for the alltt package
escape_latex = function(x) {
  x = gsub('\\\\', '\\\\textbackslash', x)
  x = gsub('([{}])', '\\\\\\1', x)
  gsub('\\\\textbackslash', '\\\\textbackslash{}', x)
}

# escape special HTML chars
escape_html = function(x) {
  x = gsub('&', '&amp;', x)
  x = gsub('<', '&lt;', x)
  x = gsub('>', '&gt;', x)
  x = gsub('"', '&quot;', x)
  x
}
