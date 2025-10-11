local g = vim.g
local highlight = vim.api.nvim_set_hl

local none = "NONE"
-- Background and foreground
local black = "#011627"
local white = "#c3ccdc"
local bg = black
if g.nightflyTransparent then
  bg = none
end
-- Variations of midnight-blue
local black_blue = "#081e2f"
local dark_blue = "#092236"
local ink_blue = "#09243a"
local deep_blue = "#0e293f"
local storm_blue = "#1b2633"
local stone_blue = "#252c3f"
local slate_blue = "#2c3043"
local pickle_blue = "#38507a"
local cello_blue = "#1f4462"
local regal_blue = "#1d3b53"
local carbon_blue = "#334e65"
local steel_blue = "#4b6479"
local grey_blue = "#7c8f8f"
local graphite_blue = "#768799"
local cadet_blue = "#a1aab8"
local ash_blue = "#acb4c2"
local white_blue = "#d6deeb"
-- Core theme colors
local red = "#fc514e"
local watermelon = "#ff5874"
local cinnamon = "#ed9389"
local orchid = "#e39aa6"
local orange = "#f78c6c"
local peach = "#ffcb8b"
local tan = "#ecc48d"
local yellow = "#e3d18a"
local lime = "#85dc85"
local green = "#a1cd5e"
local emerald = "#21c7a8"
local turquoise = "#7fdbca"
local malibu = "#87bcff"
local blue = "#82aaff"
local lavender = "#b0b2f4"
local violet = "#c792ea"
local purple = "#ae81ff"
-- Extra colors
local cyan_blue = "#316394"
local bay_blue = "#24567f"
local kashmir = "#4d618e"
local plant = "#2a4e57"
local bermuda = "#6e8da6"
local haze = "#87a3ba"

local nightfly_palette = function()
  return {
    black = black,
    white = white,
    bg = bg,
    black_blue = black_blue,
    dark_blue = dark_blue,
    ink_blue = ink_blue,
    deep_blue = deep_blue,
    storm_blue = storm_blue,
    stone_blue = stone_blue,
    slate_blue = slate_blue,
    pickle_blue = pickle_blue,
    regal_blue = regal_blue,
    carbon_blue = carbon_blue,
    steel_blue = steel_blue,
    grey_blue = grey_blue,
    cadet_blue = cadet_blue,
    ash_blue = ash_blue,
    white_blue = white_blue,
    red = red,
    watermelon = watermelon,
    cinnamon = cinnamon,
    orchid = orchid,
    orange = orange,
    peach = peach,
    tan = tan,
    yellow = yellow,
    lime = lime,
    green = green,
    emerald = emerald,
    turquoise = turquoise,
    malibu = malibu,
    blue = blue,
    lavender = lavender,
    violet = violet,
    purple = purple,
    cyan_blue = cyan_blue,
    bay_blue = bay_blue,
    kashmir = kashmir,
    plant = plant,
    bermuda = bermuda,
    haze = haze,
  }
end

local M = {}

M.palette = nightfly_palette()

M.style = function()
  -------------------------------------------------------------------------
  -- Custom styling groups
  -------------------------------------------------------------------------

  highlight(0, "NightflyVisual", { bg = regal_blue })
  highlight(0, "NightflyWhite", { fg = white })
  highlight(0, "NightflyDeepBlue", { fg = deep_blue })
  highlight(0, "NightflyPickleBlue", { fg = pickle_blue })
  highlight(0, "NightflyCelloBlue", { fg = cello_blue })
  highlight(0, "NightflyRegalBlue", { fg = regal_blue })
  highlight(0, "NightflySteelBlue", { fg = steel_blue })
  highlight(0, "NightflyGreyBlue", { fg = grey_blue })
  highlight(0, "NightflyCadetBlue", { fg = cadet_blue })
  highlight(0, "NightflyAshBlue", { fg = ash_blue })
  highlight(0, "NightflyWhiteBlue", { fg = white_blue })
  highlight(0, "NightflyRed", { fg = red })
  highlight(0, "NightflyWatermelon", { fg = watermelon })
  highlight(0, "NightflyCinnamon", { fg = cinnamon })
  highlight(0, "NightflyOrchid", { fg = orchid })
  highlight(0, "NightflyOrange", { fg = orange })
  highlight(0, "NightflyPeach", { fg = peach })
  highlight(0, "NightflyTan", { fg = tan })
  highlight(0, "NightflyYellow", { fg = yellow })
  highlight(0, "NightflyLime", { fg = lime })
  highlight(0, "NightflyGreen", { fg = green })
  highlight(0, "NightflyEmerald", { fg = emerald })
  highlight(0, "NightflyTurquoise", { fg = turquoise })
  highlight(0, "NightflyMalibu", { fg = malibu })
  highlight(0, "NightflyBlue", { fg = blue })
  highlight(0, "NightflyLavender", { fg = lavender })
  highlight(0, "NightflyViolet", { fg = violet })
  highlight(0, "NightflyPurple", { fg = purple })
  -- Misc helpers
  highlight(0, "NightflyUnderline", { underline = true })
  highlight(0, "NightflyNoCombine", { nocombine = true })
  -- Statusline helper colors
  highlight(0, "NightflyBlueMode", { bg = blue, fg = dark_blue })
  highlight(0, "NightflyEmeraldMode", { bg = emerald, fg = dark_blue })
  highlight(0, "NightflyPurpleMode", { bg = purple, fg = dark_blue })
  highlight(0, "NightflyWatermelonMode", { bg = watermelon, fg = dark_blue })
  highlight(0, "NightflyTanMode", { bg = tan, fg = dark_blue })
  highlight(0, "NightflyTurquoiseMode", { bg = turquoise, fg = dark_blue })
  -- Generic line helper colors
  highlight(0, "NightflyCurrentLine", { bg = deep_blue })
  highlight(0, "NightflyEmeraldLine", { bg = slate_blue, fg = emerald })
  highlight(0, "NightflyTanLine", { bg = dark_blue, fg = tan })
  highlight(0, "NightflyWatermelonLine", { bg = slate_blue, fg = watermelon })
  highlight(0, "NightflyBlueLineActive", { bg = regal_blue, fg = blue })
  highlight(0, "NightflyRedLineActive", { bg = regal_blue, fg = red })
  highlight(0, "NightflyTanLineActive", { bg = regal_blue, fg = tan })
  highlight(0, "NightflyTurquoiseLineActive", { bg = regal_blue, fg = turquoise })
  highlight(0, "NightflyWhiteLineActive", { bg = regal_blue, fg = white_blue })
  highlight(0, "NightflyYellowLineActive", { bg = regal_blue, fg = yellow })
  highlight(0, "NightflyGreyBlueRow", { bg = dark_blue, fg = grey_blue })
  highlight(0, "NightflyRedRow", { bg = dark_blue, fg = red })
  highlight(0, "NightflyYellowRow", { bg = dark_blue, fg = yellow })
  highlight(0, "NightflyMalibuRow", { bg = dark_blue, fg = malibu })
  highlight(0, "NightflyTurquoiseRow", { bg = dark_blue, fg = turquoise })
  highlight(0, "NightflyEmeraldRow", { bg = dark_blue, fg = emerald })

  -------------------------------------------------------------------------
  -- Standard styling
  -------------------------------------------------------------------------

  -- Specify the colors used by the inbuilt terminal
  if g.nightflyTerminalColors then
    g.terminal_color_0 = regal_blue
    g.terminal_color_1 = red
    g.terminal_color_2 = green
    g.terminal_color_3 = yellow
    g.terminal_color_4 = blue
    g.terminal_color_5 = violet
    g.terminal_color_6 = turquoise
    g.terminal_color_7 = white
    g.terminal_color_8 = grey_blue
    g.terminal_color_9 = watermelon
    g.terminal_color_10 = emerald
    g.terminal_color_11 = tan
    g.terminal_color_12 = malibu
    g.terminal_color_13 = purple
    g.terminal_color_14 = lime
    g.terminal_color_15 = white_blue
  end

  -- Background and text
  highlight(0, "Normal", { bg = bg, fg = white })

  -- Color of mode text, -- INSERT --
  highlight(0, "ModeMsg", { fg = cadet_blue })

  -- Comments
  if g.nightflyItalics then
    highlight(0, "Comment", { fg = grey_blue, italic = true })
  else
    highlight(0, "Comment", { link = "NightflyGreyBlue" })
  end

  -- Functions
  highlight(0, "Function", { link = "NightflyBlue" })

  -- Strings
  highlight(0, "String", { link = "NightflyTan" })

  -- Booleans
  highlight(0, "Boolean", { link = "NightflyWatermelon" })

  -- Identifiers
  highlight(0, "Identifier", { link = "NightflyTurquoise" })

  -- Color of titles
  highlight(0, "Title", { fg = orange })

  -- const, static
  highlight(0, "StorageClass", { link = "NightflyViolet" })

  -- void, intptr_t
  highlight(0, "Type", { fg = emerald })

  -- Numbers
  highlight(0, "Constant", { link = "NightflyOrange" })

  -- Character constants
  highlight(0, "Character", { link = "NightflyPurple" })

  -- Exceptions
  highlight(0, "Exception", { link = "NightflyWatermelon" })

  -- ifdef/endif
  highlight(0, "PreProc", { link = "NightflyWatermelon" })

  -- case in switch statement
  highlight(0, "Label", { link = "NightflyTurquoise" })

  -- end-of-line '$', end-of-file '~'
  highlight(0, "NonText", { fg = steel_blue })

  -- sizeof
  highlight(0, "Operator", { link = "NightflyWatermelon" })

  -- for, while
  highlight(0, "Repeat", { link = "NightflyViolet" })

  -- Search
  highlight(0, "Search", { bg = pickle_blue, fg = white_blue })
  highlight(0, "CurSearch", { bg = orange, fg = black })
  highlight(0, "IncSearch", { bg = peach, fg = black })

  -- '\n' sequences
  highlight(0, "Special", { link = "NightflyWatermelon" })

  -- if, else
  highlight(0, "Statement", { fg = violet })

  -- struct, union, enum, typedef
  highlight(0, "Structure", { link = "NightflyBlue" })

  -- Status, split and tab lines
  if g.nightflyTransparent == true then
    highlight(0, "StatusLine", { bg = black_blue, fg = white })
    highlight(0, "StatusLineNC", { bg = black_blue, fg = cadet_blue })
    highlight(0, "StatusLineTerm", { bg = black_blue, fg = white })
    highlight(0, "StatusLineTermNC", { bg = black_blue, fg = cadet_blue })
  else
    highlight(0, "StatusLine", { bg = stone_blue, fg = white })
    highlight(0, "StatusLineNC", { bg = stone_blue, fg = cadet_blue })
    highlight(0, "StatusLineTerm", { bg = stone_blue, fg = white })
    highlight(0, "StatusLineTermNC", { bg = stone_blue, fg = cadet_blue })
  end
  highlight(0, "Tabline", { bg = slate_blue, fg = cadet_blue })
  highlight(0, "TablineSel", { bg = black_blue, fg = blue })
  highlight(0, "TablineSelSymbol", { bg = black_blue, fg = emerald })
  if g.nightflyTransparent == true then
    highlight(0, "TablineFill", { fg = slate_blue })
  else
    highlight(0, "TablineFill", { bg = storm_blue, fg = slate_blue })
  end
  if g.nightflyWinSeparator == 0 then
    highlight(0, "VertSplit", { bg = black, fg = black })
  elseif g.nightflyWinSeparator == 1 then
    highlight(0, "VertSplit", { bg = stone_blue, fg = stone_blue })
  else
    highlight(0, "VertSplit", { bg = none, fg = stone_blue })
  end

  -- Visual selection
  highlight(0, "Visual", { link = "NightflyVisual" })
  highlight(0, "VisualNOS", { bg = regal_blue, fg = white })
  highlight(0, "VisualNonText", { bg = regal_blue, fg = steel_blue })

  -- Errors, warnings and whitespace-eol
  highlight(0, "Error", { bg = bg, fg = red })
  highlight(0, "ErrorMsg", { bg = bg, fg = red })
  highlight(0, "WarningMsg", { bg = bg, fg = orange })

  -- Completions
  highlight(0, "ComplHint", { link = "NightflySteelBlue" })
  highlight(0, "ComplHintMore", { link = "NightflyMalibu" })
  highlight(0, "Pmenu", { bg = ink_blue, fg = white })
  highlight(0, "PmenuBorder", { bg = ink_blue, fg = carbon_blue })
  highlight(0, "PmenuSel", { bg = cyan_blue, fg = white_blue })
  highlight(0, "PmenuSbar", { bg = ink_blue })
  highlight(0, "PmenuThumb", { bg = steel_blue })
  highlight(0, "WildMenu", { bg = cyan_blue, fg = white_blue })

  -- Spelling errors
  if g.nightflyUndercurls then
    highlight(0, "SpellBad", { bg = none, undercurl = true, sp = red })
    highlight(0, "SpellCap", { bg = none, undercurl = true, sp = yellow })
    highlight(0, "SpellRare", { bg = none, undercurl = true, sp = green })
    highlight(0, "SpellLocal", { bg = none, undercurl = true, sp = malibu })
  else
    highlight(0, "SpellBad", { bg = none, underline = true, sp = red })
    highlight(0, "SpellCap", { bg = none, underline = true, sp = yellow })
    highlight(0, "SpellRare", { bg = none, underline = true, sp = green })
    highlight(0, "SpellLocal", { bg = none, underline = true, sp = malibu })
  end

  -- Misc
  highlight(0, "Question", { fg = green })
  highlight(0, "MoreMsg", { fg = red })
  highlight(0, "LineNr", { bg = bg, fg = steel_blue })
  if g.nightflyCursorColor then
    highlight(0, "Cursor", { fg = bg, bg = blue })
  else
    highlight(0, "Cursor", { fg = bg, bg = cadet_blue })
  end
  highlight(0, "lCursor", { fg = bg, bg = cadet_blue })
  highlight(0, "CursorLineNr", { bg = dark_blue, fg = blue })
  highlight(0, "CursorColumn", { bg = dark_blue })
  highlight(0, "CursorLine", { bg = dark_blue })
  highlight(0, "CursorLineSign", { link = "CursorLine" })
  highlight(0, "Folded", { bg = dark_blue, fg = haze })
  highlight(0, "FoldColumn", { bg = bg, fg = haze })
  highlight(0, "SignColumn", { bg = bg, fg = haze })
  highlight(0, "Todo", { bg = deep_blue, fg = yellow })
  highlight(0, "SpecialKey", { bg = bg, fg = blue })
  if g.nightflyUnderlineMatchParen then
    highlight(0, "MatchParen", { bg = bg, underline = true })
  else
    highlight(0, "MatchParen", { link = "NightflyVisual" })
  end
  highlight(0, "Ignore", { link = "NightflyBlue" })
  highlight(0, "Underlined", { fg = green })
  highlight(0, "QuickFixLine", { bg = deep_blue })
  highlight(0, "Delimiter", { link = "NightflyWhite" })
  highlight(0, "qfFileName", { link = "NightflyEmerald" })
  highlight(0, "qfLineNr", { link = "NightflySteelBlue" })

  -- Color column (after line 80)
  highlight(0, "ColorColumn", { bg = black_blue })

  -- Conceal color
  highlight(0, "Conceal", { bg = none, fg = ash_blue })

  -- nvim -d
  highlight(0, "DiffAdd", { bg = plant })
  highlight(0, "DiffChange", { bg = slate_blue })
  highlight(0, "DiffDelete", { bg = slate_blue, fg = steel_blue })
  highlight(0, "DiffText", { bg = kashmir })

  -------------------------------------------------------------------------
  -- Neovim standard styling
  -------------------------------------------------------------------------

  highlight(0, "Whitespace", { fg = regal_blue })
  highlight(0, "TermCursor", { bg = cadet_blue, fg = black })
  if g.nightflyNormalFloat then
    highlight(0, "NormalFloat", { bg = bg, fg = cadet_blue })
  else
    highlight(0, "NormalFloat", { bg = dark_blue, fg = white })
  end
  highlight(0, "FloatBorder", { bg = bg, fg = slate_blue })
  highlight(0, "FloatBorder2", { bg = bg, fg = steel_blue })
  highlight(0, "FloatTitle", { bg = slate_blue, fg = white })
  if g.nightflyTransparent then
    highlight(0, "WinBar", { fg = white })
    highlight(0, "WinBarNC", { fg = cadet_blue })
  else
    highlight(0, "WinBar", { bg = deep_blue, fg = white })
    highlight(0, "WinBarNC", { bg = deep_blue, fg = cadet_blue })
  end
  highlight(0, "WinSeparator", { link = "VertSplit" })

  -- Neovim check-health
  highlight(0, "healthSuccess", { link = "DiffAdd" })
  highlight(0, "healthHeadingChar", { link = "NightflyBlue" })
  highlight(0, "helpHeader", { link = "NightflyTurquoise" })

  -- Neovim Tree-sitter
  highlight(0, "@attribute", { link = "NightflyBlue" })
  highlight(0, "@comment.error", { link = "NightflyRed" })
  highlight(0, "@comment.note", { link = "NightflyGreyBlue" })
  highlight(0, "@comment.ok", { link = "NightflyGreen" })
  highlight(0, "@comment.todo", { link = "Todo" })
  highlight(0, "@comment.warning", { link = "NightflyYellow" })
  highlight(0, "@constant", { link = "NightflyTurquoise" })
  highlight(0, "@constant.builtin", { link = "NightflyGreen" })
  highlight(0, "@constant.macro", { link = "NightflyViolet" })
  highlight(0, "@constructor", { link = "NightflyEmerald" })
  highlight(0, "@diff.delta", { link = "DiffChange" })
  highlight(0, "@diff.minus", { link = "DiffDelete" })
  highlight(0, "@diff.plus", { link = "DiffAdd" })
  highlight(0, "@function.builtin", { link = "Function" })
  highlight(0, "@function.call", { link = "Function" })
  highlight(0, "@function.macro", { link = "NightflyTurquoise" })
  highlight(0, "@function.method", { link = "Function" })
  highlight(0, "@function.method.call", { link = "Function" })
  highlight(0, "@keyword.conditional", { link = "Conditional" })
  highlight(0, "@keyword.directive", { link = "PreProc" })
  highlight(0, "@keyword.directive.define", { link = "Define" })
  highlight(0, "@keyword.exception", { link = "NightflyViolet" })
  highlight(0, "@keyword.import", { link = "Include" })
  highlight(0, "@keyword.operator", { link = "NightflyViolet" })
  highlight(0, "@keyword.repeat", { link = "Repeat" })
  highlight(0, "@keyword.storage", { link = "StorageClass" })
  highlight(0, "@markup.environment", { link = "NightflyViolet" })
  highlight(0, "@markup.environment.name", { link = "NightflyEmerald" })
  highlight(0, "@markup.heading", { link = "NightflyViolet" })
  highlight(0, "@markup.italic", { fg = orchid, italic = true })
  highlight(0, "@markup.link", { link = "NightflyGreen" })
  highlight(0, "@markup.link.label", { link = "NightflyGreen" })
  highlight(0, "@markup.link.url", { fg = purple, underline = true, sp = grey_blue })
  highlight(0, "@markup.list", { link = "NightflyWatermelon" })
  highlight(0, "@markup.list.checked", { link = "NightflyTurquoise" })
  highlight(0, "@markup.list.unchecked", { link = "NightflyBlue" })
  highlight(0, "@markup.math", { link = "NightflyMalibu" })
  highlight(0, "@markup.quote", { link = "NightflyGreyBlue" })
  highlight(0, "@markup.raw", { link = "String" })
  highlight(0, "@markup.strikethrough", { strikethrough = true })
  highlight(0, "@markup.strong", { link = "NightflyOrchid" })
  highlight(0, "@markup.underline", { underline = true })
  highlight(0, "@module", { link = "NightflyTurquoise" })
  highlight(0, "@module.builtin", { link = "NightflyGreen" })
  highlight(0, "@none", {})
  highlight(0, "@parameter.builtin", { link = "NightflyOrchid" })
  highlight(0, "@property", { link = "NightflyLavender" })
  highlight(0, "@string.documentation", { link = "NightflyTurquoise" })
  highlight(0, "@string.regexp", { link = "NightflyTurquoise" })
  highlight(0, "@string.special.path", { link = "NightflyOrchid" })
  highlight(0, "@string.special.symbol", { link = "NightflyPurple" })
  highlight(0, "@string.special.url", { link = "NightflyPurple" })
  highlight(0, "@tag", { link = "NightflyBlue" })
  highlight(0, "@tag.attribute", { link = "NightflyTurquoise" })
  highlight(0, "@tag.builtin", { link = "NightflyBlue" })
  highlight(0, "@tag.delimiter", { link = "NightflyGreen" })
  highlight(0, "@type.builtin", { link = "NightflyEmerald" })
  highlight(0, "@type.qualifier", { link = "NightflyViolet" })
  highlight(0, "@variable", { link = "NightflyWhite" })
  highlight(0, "@variable.builtin", { link = "NightflyGreen" })
  highlight(0, "@variable.member", { link = "NightflyLavender" })
  highlight(0, "@variable.parameter", { link = "NightflyOrchid" })

  -- Language specific Tree-sitter overrides.
  highlight(0, "@attribute.bind.html", { link = "NightflyMalibu" })
  highlight(0, "@attribute.directive.value.html", { link = "NightflyLavender" })
  highlight(0, "@attribute.on.html", { link = "NightflyEmerald" })
  highlight(0, "@attribute.zig", { link = "NightflyViolet" })
  highlight(0, "@character.special.vim", { link = "NightflyBlue" })
  highlight(0, "@function.macro.vim", { link = "NightflyBlue" })
  highlight(0, "@keyword.gitcommit", { link = "NightflyBlue" })
  highlight(0, "@keyword.import.bash", { link = "@keyword" })
  highlight(0, "@keyword.import.rust", { link = "@keyword" })
  highlight(0, "@keyword.storage.rust", { link = "NightflyViolet" })
  highlight(0, "@markup.heading.1.markdown", { link = "NightflyLavender" })
  highlight(0, "@markup.heading.1.vimdoc", { link = "NightflyBlue" })
  highlight(0, "@markup.heading.2.markdown", { link = "NightflyLavender" })
  highlight(0, "@markup.heading.2.vimdoc", { link = "NightflyBlue" })
  highlight(0, "@markup.heading.3.markdown", { link = "NightflyTurquoise" })
  highlight(0, "@markup.heading.3.vimdoc", { link = "NightflyBlue" })
  highlight(0, "@markup.heading.4.markdown", { link = "NightflyOrange" })
  highlight(0, "@markup.heading.5.markdown", { link = "NightflyMalibu" })
  highlight(0, "@markup.heading.6.markdown", { link = "NightflyViolet" })
  highlight(0, "@markup.heading.help", { link = "NightflyMalibu" })
  highlight(0, "@markup.heading.markdown", { link = "NightflyMalibu" })
  highlight(0, "@markup.link.gitcommit", { link = "NightflyBlue" })
  highlight(0, "@markup.link.markdown_inline", {})
  highlight(0, "@markup.link.url.gitcommit", { link = "NightflyEmerald" })
  if g.nightflyItalics then
    highlight(0, "@markup.link.url.astro", { fg = violet, italic = true })
    highlight(0, "@markup.link.url.html", { fg = violet, italic = true })
    highlight(0, "@markup.link.url.svelte", { fg = violet, italic = true })
    highlight(0, "@markup.link.url.vue", { fg = violet, italic = true })
  else
    highlight(0, "@markup.link.url.astro", { link = "NightflyViolet" })
    highlight(0, "@markup.link.url.html", { link = "NightflyViolet" })
    highlight(0, "@markup.link.url.svelte", { link = "NightflyViolet" })
    highlight(0, "@markup.link.url.vue", { link = "NightflyViolet" })
  end
  highlight(0, "@markup.list.latex", { link = "NightflyPurple" })
  highlight(0, "@markup.raw.vimdoc", { link = "NightflyOrchid" })
  highlight(0, "@namespace.latex", { link = "NightflyLavender" })
  highlight(0, "@punctuation.delimiter.astro", { link = "NightflyWatermelon" })
  highlight(0, "@punctuation.delimiter.css", { link = "NightflyWatermelon" })
  highlight(0, "@punctuation.delimiter.rust", { link = "NightflyWatermelon" })
  highlight(0, "@punctuation.delimiter.scss", { link = "NightflyWatermelon" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "NightflyWatermelon" })
  highlight(0, "@string.json", { link = "NightflyLime" })
  highlight(0, "@tag.javascript", { link = "@type" })
  highlight(0, "@tag.jsx", { link = "@type" })
  highlight(0, "@tag.tsx", { link = "@type" })
  highlight(0, "@tag.typescript", { link = "@type" })
  highlight(0, "@variable.builtin.vim", { link = "NightflyEmerald" })
  highlight(0, "@variable.member.ruby", { link = "NightflyTurquoise" })
  highlight(0, "@variable.member.yaml", { link = "NightflyBlue" })
  highlight(0, "@variable.parameter.bash", { link = "NightflyTurquoise" })
  highlight(0, "@variable.scss", { link = "NightflyTurquoise" })
  highlight(0, "@variable.vim", { link = "NightflyTurquoise" })

  -- Neovim LSP semantic highlights.
  highlight(0, "@lsp.type.boolean", { link = "@boolean" })
  highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
  highlight(0, "@lsp.type.builtinType", { link = "@type.builtin" })
  highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
  highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
  highlight(0, "@lsp.type.generic", { link = "@variable" })
  highlight(0, "@lsp.type.lifetime", { link = "@storageclass" })
  highlight(0, "@lsp.type.macro", {}) -- Use fallback Tree-sitter style for this Semantic Token
  highlight(0, "@lsp.type.magicFunction", { link = "@function" })
  highlight(0, "@lsp.type.namespace", { link = "@namespace" })
  highlight(0, "@lsp.type.operator", {}) -- Use fallback Tree-sitter style for this Semantic Token
  highlight(0, "@lsp.type.parameter", { link = "@parameter" })
  highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
  if g.nightflyUndercurls then
    highlight(0, "@lsp.type.unresolvedReference", { undercurl = true, sp = red })
  else
    highlight(0, "@lsp.type.unresolvedReference", { underline = true, sp = red })
  end
  highlight(0, "@lsp.type.variable", {}) -- Use fallback Tree-sitter style for this Semantic Token
  highlight(0, "@lsp.typemod.class.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
  highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function" })
  highlight(0, "@lsp.typemod.keyword.async", { link = "@keyword" })
  highlight(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
  highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function" })
  highlight(0, "@lsp.typemod.operator.injected", { link = "@operator" })
  highlight(0, "@lsp.typemod.string.injected", { link = "@string" })
  highlight(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type" })
  highlight(0, "@lsp.typemod.variable.callable", { link = "@function" })
  highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  highlight(0, "@lsp.typemod.variable.injected", { link = "@variable" })
  highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })

  -- Language specific LSP semantic overrides.
  highlight(0, "@lsp.type.decorator.rust", { link = "@function.macro" })
  highlight(0, "@lsp.type.namespace.ruby", {})
  highlight(0, "@lsp.type.parameter.dockerfile", { link = "@property" })
  highlight(0, "@lsp.type.variable.dockerfile", { link = "@function" })

  -- Neovim Diagnostic
  highlight(0, "DiagnosticError", { link = "NightflyRed" })
  highlight(0, "DiagnosticWarn", { link = "NightflyYellow" })
  highlight(0, "DiagnosticInfo", { link = "NightflyMalibu" })
  highlight(0, "DiagnosticHint", { link = "NightflyTurquoise" })
  highlight(0, "DiagnosticOk", { link = "NightflyEmerald" })
  if g.nightflyUndercurls then
    highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = red })
    highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = yellow })
    highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = malibu })
    highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = turquoise })
    highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = emerald })
  else
    highlight(0, "DiagnosticUnderlineError", { underline = true, sp = red })
    highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = yellow })
    highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = malibu })
    highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = turquoise })
    highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = emerald })
  end
  if g.nightflyVirtualTextColor then
    highlight(0, "DiagnosticVirtualTextError", { link = "NightflyRedRow" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "NightflyYellowRow" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "NightflyMalibuRow" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "NightflyTurquoiseRow" })
    highlight(0, "DiagnosticVirtualTextOk", { link = "NightflyEmeraldRow" })
  else
    highlight(0, "DiagnosticVirtualTextError", { link = "NightflySteelBlue" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "NightflySteelBlue" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "NightflySteelBlue" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "NightflySteelBlue" })
    highlight(0, "DiagnosticVirtualTextOk", { link = "NightflySteelBlue" })
  end
  highlight(0, "DiagnosticSignError", { link = "NightflyRed" })
  highlight(0, "DiagnosticSignWarn", { link = "NightflyYellow" })
  highlight(0, "DiagnosticSignInfo", { link = "NightflyMalibu" })
  highlight(0, "DiagnosticSignHint", { link = "NightflyTurquoise" })
  highlight(0, "DiagnosticSignOk", { link = "NightflyEmerald" })
  highlight(0, "DiagnosticFloatingError", { link = "NightflyRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "NightflyYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "NightflyMalibu" })
  highlight(0, "DiagnosticFloatingHint", { link = "NightflyTurquoise" })
  highlight(0, "DiagnosticFloatingOk", { link = "NightflyEmerald" })

  -- Neovim LSP
  highlight(0, "LspCodeLens", { link = "NightflySteelBlue" })
  highlight(0, "LspCodeLensSeparator", { link = "NightflySteelBlue" })
  highlight(0, "LspInfoBorder", { link = "FloatBorder" })
  highlight(0, "LspInlayHint", { link = "NightflyGreyBlueRow" })
  highlight(0, "LspReferenceText", { link = "NightflyVisual" })
  highlight(0, "LspReferenceRead", { link = "NightflyVisual" })
  highlight(0, "LspReferenceWrite", { link = "NightflyVisual" })
  highlight(0, "LspSignatureActiveParameter", { bg = slate_blue })

  -------------------------------------------------------------------------
  -- Legacy language styling
  -------------------------------------------------------------------------

  -- CSV
  highlight(0, "csvCol0", { link = "NightflyRed" })
  highlight(0, "csvCol1", { link = "NightflyOrange" })
  highlight(0, "csvCol2", { link = "NightflyYellow" })
  highlight(0, "csvCol3", { link = "NightflyGreen" })
  highlight(0, "csvCol4", { link = "NightflyTurquoise" })
  highlight(0, "csvCol5", { link = "NightflyBlue" })
  highlight(0, "csvCol6", { link = "NightflyPurple" })
  highlight(0, "csvCol7", { link = "NightflyViolet" })
  highlight(0, "csvCol8", { link = "NightflyLavender" })

  -- Help
  highlight(0, "helpCommand", { link = "NightflyOrchid" })
  highlight(0, "helpExample", { link = "NightflyGreen" })
  highlight(0, "helpHeadline", { link = "NightflyBlue" })
  highlight(0, "helpHyperTextEntry", { link = "NightflyTurquoise" })
  highlight(0, "helpSectionDelim", { link = "NightflyBlue" })

  -- LaTeX
  highlight(0, "texBeginEndName", { link = "NightflyEmerald" })
  highlight(0, "texCite", { link = "NightflyGreen" })
  highlight(0, "texDocType", { link = "NightflyWatermelon" })
  highlight(0, "texDocTypeArgs", { link = "NightflyOrchid" })
  highlight(0, "texInputFile", { link = "String" })
  highlight(0, "texMathZoneC", { link = "NightflyMalibu" })
  highlight(0, "texMathZoneX", { link = "NightflyMalibu" })
  highlight(0, "texRefZone", { link = "NightflyGreen" })
  highlight(0, "texSection", { link = "NightflyLavender" })
  highlight(0, "texTypeStyle", { link = "NightflyYellow" })
  highlight(0, "texZone", { link = "NightflyLavender" })

  -- Man
  highlight(0, "manHeader", { link = "NightflyEmerald" })
  highlight(0, "manOptionDesc", { link = "NightflyOrchid" })
  highlight(0, "manReference", { link = "NightflyGreen" })
  highlight(0, "manSectionHeading", { link = "NightflyBlue" })
  highlight(0, "manSubHeading", { link = "NightflyTurquoise" })

  -- Markdown, 'tpope/vim-markdown' plugin
  highlight(0, "markdownBold", { link = "NightflyPeach" })
  highlight(0, "markdownCode", { link = "NightflyTan" })
  highlight(0, "markdownCodeDelimiter", { link = "NightflyTan" })
  highlight(0, "markdownError", { link = "NormalNC" })
  highlight(0, "markdownH1", { link = "NightflyEmerald" })
  highlight(0, "markdownH2", { link = "NightflyBlue" })
  highlight(0, "markdownH3", { link = "NightflyTurquoise" })
  highlight(0, "markdownHeadingRule", { link = "NightflyWatermelon" })
  if g.nightflyItalics then
    highlight(0, "markdownItalic", { fg = orchid, italic = true })
  else
    highlight(0, "markdownItalic", { link = "NightflyOrchid" })
  end
  highlight(0, "markdownUrl", { link = "NightflyPurple" })

  -- Markdown, 'plasticboy/vim-markdown' plugin
  highlight(0, "mkdDelimiter", { link = "NightflyWhite" })
  highlight(0, "mkdLineBreak", { link = "NormalNC" })
  highlight(0, "mkdListItem", { link = "NightflyBlue" })
  highlight(0, "mkdURL", { link = "NightflyPurple" })

  -- Shell
  highlight(0, "shAlias", { link = "NightflyTurquoise" })
  highlight(0, "shCommandSub", { link = "NightflyWhite" })
  highlight(0, "shCtrlSeq", { link = "NightflyTan" })
  highlight(0, "shLoop", { link = "NightflyViolet" })
  highlight(0, "shRange", { link = "NightflyWhite" })
  highlight(0, "shSetList", { link = "NightflyTurquoise" })
  highlight(0, "shShellVariables", { link = "NightflyTurquoise" })
  highlight(0, "shVariable", { link = "NightflyTurquoise" })

  -- XML
  highlight(0, "xmlAttrib", { link = "NightflyLime" })
  highlight(0, "xmlEndTag", { link = "NightflyBlue" })
  highlight(0, "xmlTag", { link = "NightflyGreen" })
  highlight(0, "xmlTagName", { link = "NightflyBlue" })

  -------------------------------------------------------------------------
  -- Neovim plugin styling
  -------------------------------------------------------------------------

  -- arrow.nvim
  highlight(0, "ArrowCurrentFile", { link = "NightflyEmerald" })

  -- Barbar plugin
  highlight(0, "BufferCurrent", { link = "NightflyWhiteLineActive" })
  highlight(0, "BufferCurrentIndex", { link = "NightflyWhiteLineActive" })
  highlight(0, "BufferCurrentMod", { link = "NightflyTanLineActive" })
  highlight(0, "BufferCurrentSign", { link = "NightflyBlueLineActive" })
  highlight(0, "BufferCurrentERROR", { link = "NightflyRedLineActive" })
  highlight(0, "BufferCurrentWARN", { link = "NightflyYellowLineActive" })
  highlight(0, "BufferCurrentINFO", { link = "NightflyBlueLineActive" })
  highlight(0, "BufferCurrentHINT", { link = "NightflyTurquoiseLineActive" })
  highlight(0, "BufferTabpages", { bg = slate_blue, fg = blue })
  highlight(0, "BufferVisible", { link = "NightflyGreyBlueRow" })
  highlight(0, "BufferVisibleIndex", { link = "NightflyGreyBlueRow" })
  highlight(0, "BufferVisibleMod", { link = "NightflyTanLine" })
  highlight(0, "BufferVisibleSign", { link = "NightflyGreyBlueRow" })
  highlight(0, "BufferVisibleERROR", { link = "GitSignsDeleteCul" })
  highlight(0, "BufferVisibleWARN", { link = "NightflyYellowRow" })
  highlight(0, "BufferVisibleINFO", { link = "NightflyMalibuRow" })
  highlight(0, "BufferVisibleHINT", { link = "NightflyTurquoiseRow" })
  highlight(0, "BufferInactive", { bg = slate_blue, fg = grey_blue })
  highlight(0, "BufferInactiveMod", { bg = slate_blue, fg = tan })
  highlight(0, "BufferInactiveSign", { bg = slate_blue, fg = cadet_blue })
  highlight(0, "BufferInactiveERROR", { bg = slate_blue, fg = red })
  highlight(0, "BufferInactiveWARN", { bg = slate_blue, fg = yellow })
  highlight(0, "BufferInactiveINFO", { link = "BufferTabpages" })
  highlight(0, "BufferInactiveHINT", { bg = slate_blue, fg = turquoise })
  highlight(0, "BufferAlternate", { link = "BufferCurrent" })
  highlight(0, "BufferAlternateIndex", { link = "BufferCurrentIndex" })
  highlight(0, "BufferAlternateMod", { link = "BufferCurrentMod" })
  highlight(0, "BufferAlternateSign", { link = "BufferCurrentSign" })
  highlight(0, "BufferAlternateERROR", { link = "BufferCurrentERROR" })
  highlight(0, "BufferAlternateWARN", { link = "BufferCurrentWARN" })
  highlight(0, "BufferAlternateINFO", { link = "BufferCurrentINFO" })
  highlight(0, "BufferAlternateHINT", { link = "BufferCurrentHINT" })

  -- blink.cmp
  highlight(0, "BlinkCmpDocCursorLine", { link = "NightflyCurrentLine" })
  highlight(0, "BlinkCmpKind", { link = "NightflyWhite" })
  highlight(0, "BlinkCmpKindClass", { link = "NightflyEmerald" })
  highlight(0, "BlinkCmpKindColor", { link = "NightflyTurquoise" })
  highlight(0, "BlinkCmpKindConstant", { link = "NightflyPurple" })
  highlight(0, "BlinkCmpKindConstructor", { link = "NightflyBlue" })
  highlight(0, "BlinkCmpKindEnum", { link = "NightflyViolet" })
  highlight(0, "BlinkCmpKindEnumMember", { link = "NightflyTurquoise" })
  highlight(0, "BlinkCmpKindEvent", { link = "NightflyViolet" })
  highlight(0, "BlinkCmpKindField", { link = "NightflyTurquoise" })
  highlight(0, "BlinkCmpKindFile", { link = "NightflyBlue" })
  highlight(0, "BlinkCmpKindFolder", { link = "NightflyBlue" })
  highlight(0, "BlinkCmpKindFunction", { link = "NightflyBlue" })
  highlight(0, "BlinkCmpKindInterface", { link = "NightflyEmerald" })
  highlight(0, "BlinkCmpKindKeyword", { link = "NightflyViolet" })
  highlight(0, "BlinkCmpKindMethod", { link = "NightflyBlue" })
  highlight(0, "BlinkCmpKindModule", { link = "NightflyEmerald" })
  highlight(0, "BlinkCmpKindOperator", { link = "NightflyViolet" })
  highlight(0, "BlinkCmpKindProperty", { link = "NightflyTurquoise" })
  highlight(0, "BlinkCmpKindReference", { link = "NightflyTurquoise" })
  highlight(0, "BlinkCmpKindSnippet", { link = "NightflyGreen" })
  highlight(0, "BlinkCmpKindStruct", { link = "NightflyEmerald" })
  highlight(0, "BlinkCmpKindText", { link = "NightflyAshBlue" })
  highlight(0, "BlinkCmpKindTypeParameter", { link = "NightflyEmerald" })
  highlight(0, "BlinkCmpKindUnit", { link = "NightflyTurquoise" })
  highlight(0, "BlinkCmpKindValue", { link = "NightflyTurquoise" })
  highlight(0, "BlinkCmpKindVariable", { link = "NightflyTurquoise" })
  highlight(0, "BlinkCmpLabel", { link = "NightflyWhite" })
  highlight(0, "BlinkCmpLabelMatch", { link = "CmpItemAbbrMatch" })
  highlight(0, "BlinkCmpMenu", { link = "NormalFloat" })
  highlight(0, "BlinkCmpMenuBorder", { link = "FloatBorder" })
  highlight(0, "BlinkCmpMenuSelection", { link = "NightflyVisual" })

  -- Bufferline plugin
  highlight(0, "BufferLineTabSelected", { fg = blue })
  highlight(0, "BufferLineIndicatorSelected", { fg = blue })

  -- Dashboard plugin
  highlight(0, "DashboardCenter", { link = "NightflyViolet" })
  highlight(0, "DashboardFooter", { link = "NightflyOrange" })
  highlight(0, "DashboardHeader", { link = "NightflyBlue" })
  highlight(0, "DashboardShortCut", { link = "NightflyTurquoise" })

  -- fzf-lua
  highlight(0, "FzfLuaBorder", { link = "FloatBorder" })
  highlight(0, "FzfLuaBufFlagAlt", { link = "NightflyTurquoise" })
  highlight(0, "FzfLuaBufFlagCur", { link = "NightflyOrange" })
  highlight(0, "FzfLuaBufNr", { link = "NightflyTan" })
  highlight(0, "FzfLuaFzfHeader", { link = "NightflyBlue" })
  highlight(0, "FzfLuaFzfInfo", { link = "String" })
  highlight(0, "FzfLuaFzfMarker", { link = "NightflyOrange" })
  highlight(0, "FzfLuaFzfPointer", { link = "NightflyWatermelon" })
  highlight(0, "FzfLuaFzfPrompt", { link = "NightflyBlue" })
  highlight(0, "FzfLuaFzfSpinner", { link = "NightflyEmerald" })
  highlight(0, "FzfLuaHeaderBind", { link = "NightflyGreen" })
  highlight(0, "FzfLuaHeaderText", { link = "NightflyTurquoise" })
  highlight(0, "FzfLuaLiveSym", { link = "NightflyGreen" })
  highlight(0, "FzfLuaPathColNr", { link = "NightflyMalibu" })
  highlight(0, "FzfLuaTabMarker", { link = "NightflyTan" })
  highlight(0, "FzfLuaTabTitle", { link = "NightflyMalibu" })
  highlight(0, "FzfLuaTitle", { link = "FloatTitle" })

  -- gitsigns.nvim plugin
  --   sign column
  highlight(0, "GitSignsAdd", { link = "NightflyEmerald" })
  highlight(0, "GitSignsAddCul", { link = "NightflyEmeraldRow" })
  highlight(0, "GitSignsChange", { link = "NightflyMalibu" })
  highlight(0, "GitSignsChangeCul", { link = "NightflyMalibuRow" })
  highlight(0, "GitSignsChangedelete", { link = "NightflyOrange" })
  highlight(0, "GitSignsChangedeleteCul", { bg = dark_blue, fg = orange })
  highlight(0, "GitSignsDelete", { link = "NightflyRed" })
  highlight(0, "GitSignsDeleteCul", { link = "NightflyRedRow" })
  highlight(0, "GitSignsTopdelete", { link = "NightflyRed" })
  highlight(0, "GitSignsTopdeleteCul", { link = "GitSignsDeleteCul" })
  highlight(0, "GitSignsUntracked", { link = "NightflySteelBlue" })
  highlight(0, "GitSignsUntrackedCul", { bg = dark_blue, fg = steel_blue })
  --   line highlights
  highlight(0, "GitSignsAddLn", { link = "NightflyCurrentLine" })
  highlight(0, "GitSignsChangeLn", { bg = dark_blue })
  --   word diff
  highlight(0, "GitSignsAddLnInline", { bg = pickle_blue })
  highlight(0, "GitSignsChangeLnInline", { bg = pickle_blue })
  --   word diff in preview
  highlight(0, "GitSignsAddInline", { bg = green, fg = black })
  highlight(0, "GitSignsChangeInline", { bg = yellow, fg = black })
  highlight(0, "GitSignsDeleteInline", { bg = red, fg = black })
  --   misc
  highlight(0, "GitSignsAddPreview", { link = "NightflyEmeraldLine" })
  highlight(0, "GitSignsDeletePreview", { link = "NightflyWatermelonLine" })
  highlight(0, "GitSignsDeleteVirtLn", { link = "NightflyWatermelonLine" })

  -- Hop plugin
  highlight(0, "HopCursor", { link = "IncSearch" })
  highlight(0, "HopNextKey", { link = "NightflyYellow" })
  highlight(0, "HopNextKey1", { link = "NightflyBlue" })
  highlight(0, "HopNextKey2", { link = "NightflyWatermelon" })
  highlight(0, "HopUnmatched", { link = "NightflyGreyBlue" })

  -- Indent Blankline plugin
  highlight(0, "IblIndent", { fg = deep_blue, nocombine = true })
  highlight(0, "IblScope", { fg = bermuda, nocombine = true })
  highlight(0, "IblWhitespace", { fg = deep_blue, nocombine = true })

  -- lazy.nvim plugin
  highlight(0, "LazyCommit", { link = "NightflyEmerald" })
  highlight(0, "LazyCommitType", { link = "NightflyViolet" })
  highlight(0, "LazyDimmed", { fg = grey_blue })
  highlight(0, "LazyH1", { link = "NightflyBlueMode" })
  highlight(0, "LazyProgressDone", { link = "NightflyBlue" })
  highlight(0, "LazyProgressTodo", { link = "NightflyRegalBlue" })
  highlight(0, "LazyReasonCmd", { link = "NightflyGreen" })
  highlight(0, "LazyReasonFt", { link = "NightflyLime" })
  highlight(0, "LazyReasonPlugin", { link = "NightflyOrchid" })
  highlight(0, "LazyReasonRuntime", { link = "NightflyTurquoise" })
  highlight(0, "LazyReasonSource", { link = "NightflyMalibu" })
  highlight(0, "LazySpecial", { link = "NightflyBlue" })
  highlight(0, "LazyButton", { bg = deep_blue, fg = white })
  highlight(0, "LazyButtonActive", { bg = bay_blue, fg = white_blue })
  if g.nightflyNormalFloat ~= true then
    highlight(0, "LazyNormal", { bg = black_blue, fg = white })
  end

  -- linefly plugin
  highlight(0, "LineflyNormal", { link = "NightflyBlueMode" })
  highlight(0, "LineflyInsert", { link = "NightflyEmeraldMode" })
  highlight(0, "LineflyVisual", { link = "NightflyPurpleMode" })
  highlight(0, "LineflyCommand", { link = "NightflyTanMode" })
  highlight(0, "LineflyReplace", { link = "NightflyWatermelonMode" })

  -- lspsaga.nvim plugin
  highlight(0, "TitleString", { link = "NightflyBlue" })
  highlight(0, "TitleIcon", { link = "NightflyBlue" })
  highlight(0, "TitleSymbol", { link = "NightflyBlue" })
  highlight(0, "SagaBorder", { link = "FloatBorder" })
  highlight(0, "SagaNormal", { link = "Normal" })
  highlight(0, "SagaExpand", { link = "NightflyWatermelon" })
  highlight(0, "SagaCollapse", { link = "NightflyWatermelon" })
  highlight(0, "SagaBeacon", { link = "NightflyPurpleMode" })
  highlight(0, "ActionPreviewTitle", { link = "NightflyBlue" })
  highlight(0, "CodeActionText", { link = "NightflyYellow" })
  highlight(0, "CodeActionConceal", { link = "NightflyGreen" })
  highlight(0, "FinderSelection", { link = "NightflyTurquoise" })
  highlight(0, "FinderFName", { link = "NightflyWhite" })
  highlight(0, "FinderCode", { link = "NightflyWhite" })
  highlight(0, "FinderIcon", { link = "NightflyTurquoise" })
  highlight(0, "FinderType", { link = "NightflyViolet" })
  highlight(0, "FinderSpinnerTitle", { link = "NightflyPurple" })
  highlight(0, "FinderSpinner", { link = "NightflyPurple" })
  highlight(0, "RenameNormal", { link = "NightflyOrange" })
  highlight(0, "DiagnosticSource", { link = "NightflySteelBlue" })
  highlight(0, "DiagnosticText", { link = "NightflyRed" })
  highlight(0, "CallHierarchyIcon", { link = "NightflyViolet" })
  highlight(0, "CallHierarchyTitle", { link = "NightflyWatermelon" })
  highlight(0, "SagaShadow", { link = "Normal" })
  highlight(0, "OutlineIndent", { link = "NightflyPurple" })

  -- mason.nvim plugin
  highlight(0, "MasonError", { link = "NightflyRed" })
  highlight(0, "MasonHeader", { link = "NightflyBlueMode" })
  highlight(0, "MasonHeaderSecondary", { link = "NightflyBlueMode" })
  highlight(0, "MasonHeading", { link = "NightflyWhiteBlue" })
  highlight(0, "MasonHighlight", { link = "NightflyBlue" })
  highlight(0, "MasonHighlightBlock", { link = "NightflyBlueMode" })
  highlight(0, "MasonHighlightBlockBold", { link = "NightflyBlueMode" })
  highlight(0, "MasonHighlightBlockBoldSecondary", { link = "NightflyEmeraldMode" })
  highlight(0, "MasonHighlightBlockSecondary", { link = "NightflyEmeraldMode" })
  highlight(0, "MasonHighlightSecondary", { link = "NightflyEmerald" })
  highlight(0, "MasonLink", { link = "NightflyPurple" })
  highlight(0, "MasonMuted", { link = "NightflySteelBlue" })
  highlight(0, "MasonMutedBlock", { bg = deep_blue, fg = white })
  highlight(0, "MasonMutedBlockBold", { bg = deep_blue, fg = white_blue })

  -- Mini.nvim plugin
  highlight(0, "MiniAnimateNormalFloat", { link = "NormalFloat" })
  highlight(0, "MiniClueBorder", { link = "FloatBorder" })
  highlight(0, "MiniClueDescGroup", { link = "DiagnosticFloatingWarn" })
  highlight(0, "MiniClueDescSingle", { link = "NormalFloat" })
  highlight(0, "MiniClueNextKey", { link = "DiagnosticFloatingHint" })
  highlight(0, "MiniClueNextKeyWithPostkeys", { link = "DiagnosticFloatingError" })
  highlight(0, "MiniClueSeparator", { link = "DiagnosticFloatingInfo" })
  highlight(0, "MiniClueTitle", { link = "FloatTitle" })
  highlight(0, "MiniCompletionActiveParameter", { link = "NightflyVisual" })
  highlight(0, "MiniCursorword", { link = "NightflyUnderline" })
  highlight(0, "MiniCursorwordCurrent", { link = "NightflyUnderline" })
  highlight(0, "MiniDepsChangeAdded", { link = "diffAdded" })
  highlight(0, "MiniDepsChangeRemoved", { link = "diffRemoved" })
  highlight(0, "MiniDepsHint", { link = "DiagnosticHint" })
  highlight(0, "MiniDepsInfo", { link = "DiagnosticInfo" })
  highlight(0, "MiniDepsMsgBreaking", { link = "DiagnosticWarn" })
  highlight(0, "MiniDepsPlaceholder", { link = "Comment" })
  highlight(0, "MiniDepsTitle", { link = "Title" })
  highlight(0, "MiniDepsTitleError", { link = "NightflyWatermelonLine" })
  highlight(0, "MiniDepsTitleSame", { link = "DiffText" })
  highlight(0, "MiniDepsTitleUpdate", { link = "DiffAdd" })
  highlight(0, "MiniDiffOverAdd", { link = "DiffAdd" })
  highlight(0, "MiniDiffOverChange", { link = "DiffText" })
  highlight(0, "MiniDiffOverContext", { link = "DiffChange" })
  highlight(0, "MiniDiffOverDelete", { link = "NightflyWatermelonLine" })
  highlight(0, "MiniDiffSignAdd", { link = "NightflyEmerald" })
  highlight(0, "MiniDiffSignChange", { link = "NightflyMalibu" })
  highlight(0, "MiniDiffSignDelete", { link = "NightflyRed" })
  highlight(0, "MiniFilesBorder", { link = "FloatBorder" })
  highlight(0, "MiniFilesBorderModified", { link = "DiagnosticFloatingWarn" })
  highlight(0, "MiniFilesCursorLine", { link = "NightflyCurrentLine" })
  highlight(0, "MiniFilesDirectory", { link = "Directory" })
  highlight(0, "MiniFilesFile", { link = "NightflyWhite" })
  highlight(0, "MiniFilesNormal", { link = "NormalFloat" })
  highlight(0, "MiniFilesTitle", { link = "FloatTitle" })
  highlight(0, "MiniFilesTitleFocused", { link = "NightflyEmeraldLine" })
  highlight(0, "MiniIconsAzure", { link = "NightflyMalibu" })
  highlight(0, "MiniIconsBlue", { link = "NightflyBlue" })
  highlight(0, "MiniIconsCyan", { link = "NightflyTurquoise" })
  highlight(0, "MiniIconsGreen", { link = "NightflyGreen" })
  highlight(0, "MiniIconsGrey", { link = "NightflyWhiteBlue" })
  highlight(0, "MiniIconsOrange", { link = "NightflyOrange" })
  highlight(0, "MiniIconsPurple", { link = "NightflyPurple" })
  highlight(0, "MiniIconsRed", { link = "NightflyWatermelon" })
  highlight(0, "MiniIconsYellow", { link = "NightflyYellow" })
  highlight(0, "MiniIndentscopePrefix", { link = "NightflyNoCombine" })
  highlight(0, "MiniIndentscopeSymbol", { link = "NightflyWhite" })
  highlight(0, "MiniJump", { link = "SpellRare" })
  highlight(0, "MiniJump2dDim", { link = "NightflyGreyBlue" })
  highlight(0, "MiniMapNormal", { link = "NormalFloat" })
  highlight(0, "MiniMapSymbolCount", { link = "Special" })
  highlight(0, "MiniMapSymbolLine", { link = "Title" })
  highlight(0, "MiniMapSymbolView", { link = "Delimiter" })
  highlight(0, "MiniNotifyBorder", { link = "FloatBorder" })
  highlight(0, "MiniNotifyNormal", { link = "NormalFloat" })
  highlight(0, "MiniNotifyTitle", { link = "FloatTitle" })
  highlight(0, "MiniOperatorsExchangeFrom", { link = "IncSearch" })
  highlight(0, "MiniPickBorder", { link = "FloatBorder" })
  highlight(0, "MiniPickBorderBusy", { link = "DiagnosticFloatingWarn" })
  highlight(0, "MiniPickBorderText", { link = "FloatTitle" })
  highlight(0, "MiniPickHeader", { link = "DiagnosticFloatingHint" })
  highlight(0, "MiniPickIconDirectory", { link = "Directory" })
  highlight(0, "MiniPickIconFile", { link = "MiniPickNormal" })
  highlight(0, "MiniPickMatchCurrent", { link = "NightflyCurrentLine" })
  highlight(0, "MiniPickMatchMarked", { link = "DiffAdd" })
  highlight(0, "MiniPickMatchRanges", { link = "DiagnosticFloatingHint" })
  highlight(0, "MiniPickNormal", { link = "NormalFloat" })
  highlight(0, "MiniPickPreviewLine", { link = "CursorLine" })
  highlight(0, "MiniPickPreviewRegion", { link = "IncSearch" })
  highlight(0, "MiniPickPrompt", { link = "DiagnosticFloatingInfo" })
  highlight(0, "MiniStarterCurrent", { link = "NightflyNoCombine" })
  highlight(0, "MiniStarterFooter", { link = "Title" })
  highlight(0, "MiniStarterHeader", { link = "NightflyViolet" })
  highlight(0, "MiniStarterInactive", { link = "Comment" })
  highlight(0, "MiniStarterItem", { link = "Normal" })
  highlight(0, "MiniStarterItemBullet", { link = "Delimiter" })
  highlight(0, "MiniStarterItemPrefix", { link = "NightflyYellow" })
  highlight(0, "MiniStarterQuery", { link = "NightflyBlue" })
  highlight(0, "MiniStarterSection", { link = "NightflyWatermelon" })
  highlight(0, "MiniStatuslineDevinfo", { link = "NightflyVisual" })
  highlight(0, "MiniStatuslineFileinfo", { link = "NightflyVisual" })
  highlight(0, "MiniStatuslineModeCommand", { link = "NightflyTanMode" })
  highlight(0, "MiniStatuslineModeInsert", { link = "NightflyEmeraldMode" })
  highlight(0, "MiniStatuslineModeNormal", { link = "NightflyBlueMode" })
  highlight(0, "MiniStatuslineModeOther", { link = "NightflyTurquoiseMode" })
  highlight(0, "MiniStatuslineModeReplace", { link = "NightflyWatermelonMode" })
  highlight(0, "MiniStatuslineModeVisual", { link = "NightflyPurpleMode" })
  highlight(0, "MiniSurround", { link = "IncSearch" })
  highlight(0, "MiniTablineCurrent", { link = "NightflyWhiteLineActive" })
  highlight(0, "MiniTablineFill", { link = "TabLineFill" })
  highlight(0, "MiniTablineModifiedCurrent", { link = "NightflyTanLineActive" })
  highlight(0, "MiniTablineModifiedVisible", { link = "NightflyTanLine" })
  highlight(0, "MiniTablineTabpagesection", { link = "NightflyBlueMode" })
  highlight(0, "MiniTablineVisible", { link = "NightflyGreyBlueRow" })
  highlight(0, "MiniTestEmphasis", { link = "NightflyUnderline" })
  highlight(0, "MiniTestFail", { link = "NightflyRed" })
  highlight(0, "MiniTestPass", { link = "NightflyGreen" })
  highlight(0, "MiniTrailspace", { link = "NightflyWatermelonMode" })
  highlight(0, "MiniAnimateCursor", { reverse = true, nocombine = true })
  highlight(0, "MiniHipatternsFixme", { fg = bg, bg = red })
  highlight(0, "MiniHipatternsHack", { fg = bg, bg = yellow })
  highlight(0, "MiniHipatternsNote", { fg = bg, bg = malibu })
  highlight(0, "MiniHipatternsTodo", { fg = bg, bg = turquoise })
  highlight(0, "MiniJump2dSpot", { fg = yellow, underline = true, nocombine = true })
  highlight(0, "MiniJump2dSpotAhead", { fg = blue, bg = dark_blue, nocombine = true })
  highlight(0, "MiniJump2dSpotUnique", { fg = emerald, underline = true, nocombine = true })
  highlight(0, "MiniStatuslineFilename", { bg = stone_blue, fg = white })
  highlight(0, "MiniStatuslineInactive", { bg = stone_blue, fg = cadet_blue })
  highlight(0, "MiniTablineHidden", { bg = slate_blue, fg = grey_blue })
  highlight(0, "MiniTablineModifiedHidden", { bg = slate_blue, fg = tan })

  -- Neo-tree plugin
  highlight(0, "NeoTreeCursorLine", { link = "NightflyCurrentLine" })
  highlight(0, "NeoTreeDimText", { link = "NightflyPickleBlue" })
  highlight(0, "NeoTreeDirectoryIcon", { link = "NightflyGreyBlue" })
  highlight(0, "NeoTreeDirectoryName", { link = "Directory" })
  highlight(0, "NeoTreeDotfile", { link = "NightflyGreyBlue" })
  highlight(0, "NeoTreeFloatTitle", { link = "FloatTitle" })
  highlight(0, "NeoTreeFilterTerm", { link = "NightflyBlue" })
  highlight(0, "NeoTreeGitAdded", { link = "NightflyGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "NightflyWatermelon" })
  highlight(0, "NeoTreeGitModified", { link = "NightflyTurquoise" })
  highlight(0, "NeoTreeGitUntracked", { link = "NightflyOrchid" })
  highlight(0, "NeoTreeIndentMarker", { link = "NightflyCelloBlue" })
  highlight(0, "NeoTreeMessage", { link = "NightflyCadetBlue" })
  highlight(0, "NeoTreeModified", { link = "NightflyTan" })
  highlight(0, "NeoTreeRootName", { link = "NightflyPurple" })
  highlight(0, "NeoTreeTitleBar", { bg = slate_blue, fg = white })

  -- Neogit plugin
  highlight(0, "NeogitBranch", { link = "NightflyBlue" })
  highlight(0, "NeogitDiffAddHighlight", { link = "NightflyEmeraldLine" })
  highlight(0, "NeogitDiffContextHighlight", { bg = dark_blue })
  highlight(0, "NeogitDiffDeleteHighlight", { link = "NightflyWatermelonLine" })
  highlight(0, "NeogitHunkHeader", { link = "Pmenu" })
  highlight(0, "NeogitHunkHeaderHighlight", { link = "NightflyBlueLineActive" })
  highlight(0, "NeogitRemote", { link = "NightflyPurple" })

  -- Noice plugin
  highlight(0, "NoiceCmdlinePopup", { link = "NightflyCadetBlue" })
  highlight(0, "NoiceCmdlinePopupBorder", { link = "NightflyPickleBlue" })
  highlight(0, "NoiceCmdlinePopupBorderSearch", { link = "NightflyPickleBlue" })
  highlight(0, "NoiceCmdlinePrompt", { link = "NightflyBlue" })
  highlight(0, "NoiceCompletionItemKindDefault", { link = "NightflyTurquoise" })
  highlight(0, "NoiceConfirmBorder", { link = "NightflyBlue" })
  highlight(0, "NoiceFormatTitle", { link = "NightflyWatermelon" })

  -- nvim-cmp plugin
  highlight(0, "CmpItemAbbrMatch", { link = "NightflyCinnamon" })
  highlight(0, "CmpItemAbbrMatchFuzzy", { link = "CmpItemAbbrMatch" })
  highlight(0, "CmpItemKind", { link = "NightflyWhite" })
  highlight(0, "CmpItemKindClass", { link = "NightflyEmerald" })
  highlight(0, "CmpItemKindColor", { link = "NightflyTurquoise" })
  highlight(0, "CmpItemKindConstant", { link = "NightflyPurple" })
  highlight(0, "CmpItemKindConstructor", { link = "NightflyBlue" })
  highlight(0, "CmpItemKindEnum", { link = "NightflyViolet" })
  highlight(0, "CmpItemKindEnumMember", { link = "NightflyTurquoise" })
  highlight(0, "CmpItemKindEvent", { link = "NightflyViolet" })
  highlight(0, "CmpItemKindField", { link = "NightflyTurquoise" })
  highlight(0, "CmpItemKindFile", { link = "NightflyBlue" })
  highlight(0, "CmpItemKindFolder", { link = "NightflyBlue" })
  highlight(0, "CmpItemKindFunction", { link = "NightflyBlue" })
  highlight(0, "CmpItemKindInterface", { link = "NightflyEmerald" })
  highlight(0, "CmpItemKindKeyword", { link = "NightflyViolet" })
  highlight(0, "CmpItemKindMethod", { link = "NightflyBlue" })
  highlight(0, "CmpItemKindModule", { link = "NightflyEmerald" })
  highlight(0, "CmpItemKindOperator", { link = "NightflyViolet" })
  highlight(0, "CmpItemKindProperty", { link = "NightflyTurquoise" })
  highlight(0, "CmpItemKindReference", { link = "NightflyTurquoise" })
  highlight(0, "CmpItemKindSnippet", { link = "NightflyGreen" })
  highlight(0, "CmpItemKindStruct", { link = "NightflyEmerald" })
  highlight(0, "CmpItemKindText", { link = "NightflyAshBlue" })
  highlight(0, "CmpItemKindTypeParameter", { link = "NightflyEmerald" })
  highlight(0, "CmpItemKindUnit", { link = "NightflyTurquoise" })
  highlight(0, "CmpItemKindValue", { link = "NightflyTurquoise" })
  highlight(0, "CmpItemKindVariable", { link = "NightflyTurquoise" })
  highlight(0, "CmpItemMenu", { link = "NightflySteelBlue" })

  -- nvim-dap-ui
  highlight(0, "DapUIBreakpointsCurrentLine", { bg = dark_blue, fg = green })
  highlight(0, "DapUIBreakpointsDisabledLine", { link = "Comment" })
  highlight(0, "DapUIBreakpointsInfo", { link = "NightflyMalibu" })
  highlight(0, "DapUIBreakpointsPath", { link = "NightflyTurquoise" })
  highlight(0, "DapUIDecoration", { link = "NightflyBlue" })
  highlight(0, "DapUIFloatBorder", { link = "FloatBorder" })
  highlight(0, "DapUILineNumber", { link = "Number" })
  highlight(0, "DapUIModifiedValue", { fg = white, underline = true })
  highlight(0, "DapUIPlayPause", { bg = deep_blue, fg = green })
  highlight(0, "DapUIRestart", { link = "DapUIPlayPause" })
  highlight(0, "DapUIScope", { link = "NightflyMalibu" })
  highlight(0, "DapUISource", { link = "NightflyViolet" })
  highlight(0, "DapUIStepBack", { bg = deep_blue, fg = turquoise })
  highlight(0, "DapUIStepInto", { link = "DapUIStepBack" })
  highlight(0, "DapUIStepOut", { link = "DapUIStepBack" })
  highlight(0, "DapUIStepOver", { link = "DapUIStepBack" })
  highlight(0, "DapUIStop", { bg = deep_blue, fg = red })
  highlight(0, "DapUIStoppedThread", { link = "NightflyTurquoise" })
  highlight(0, "DapUIThread", { link = "NightflyGreen" })
  highlight(0, "DapUIType", { link = "Type" })
  highlight(0, "DapUIUnavailable", { bg = deep_blue, fg = steel_blue })
  highlight(0, "DapUIWatchesEmpty", { link = "NightflyRed" })
  highlight(0, "DapUIWatchesError", { link = "NightflyRed" })
  highlight(0, "DapUIWatchesValue", { link = "NightflyGreen" })
  highlight(0, "DapUIWinSelect", { link = "NightflyBlue" })

  -- nvim-navic plugin
  highlight(0, "NavicText", { bg = slate_blue, fg = ash_blue })
  highlight(0, "NavicSeparator", { bg = slate_blue, fg = white })
  highlight(0, "NavicIconsOperator", { bg = slate_blue, fg = watermelon })
  highlight(0, "NavicIconsBoolean", { link = "NavicIconsOperator" })
  highlight(0, "NavicIconsClass", { bg = slate_blue, fg = emerald })
  highlight(0, "NavicIconsConstant", { bg = slate_blue, fg = orange })
  highlight(0, "NavicIconsConstructor", { bg = slate_blue, fg = blue })
  highlight(0, "NavicIconsEnum", { bg = slate_blue, fg = violet })
  highlight(0, "NavicIconsEnumMember", { bg = slate_blue, fg = turquoise })
  highlight(0, "NavicIconsEvent", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsField", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsFile", { bg = slate_blue, fg = blue })
  highlight(0, "NavicIconsFunction", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsInterface", { link = "NavicIconsEnum" })
  highlight(0, "NavicIconsKey", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsMethod", { link = "NavicIconsConstructor" })
  highlight(0, "NavicIconsModule", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNamespace", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsNull", { bg = slate_blue, fg = green })
  highlight(0, "NavicIconsNumber", { link = "NavicIconsConstant" })
  highlight(0, "NavicIconsObject", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsPackage", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsProperty", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsString", { bg = slate_blue, fg = tan })
  highlight(0, "NavicIconsStruct", { link = "NavicIconsClass" })
  highlight(0, "NavicIconsTypeParameter", { link = "NavicIconsEnumMember" })
  highlight(0, "NavicIconsVariable", { link = "NavicIconsEnumMember" })

  -- nvim-notify plugin
  highlight(0, "NotifyERRORBorder", { link = "FloatBorder" })
  highlight(0, "NotifyWARNBorder", { link = "FloatBorder" })
  highlight(0, "NotifyINFOBorder", { link = "FloatBorder" })
  highlight(0, "NotifyDEBUGBorder", { link = "FloatBorder" })
  highlight(0, "NotifyTRACEBorder", { link = "FloatBorder" })
  highlight(0, "NotifyERRORIcon", { link = "NightflyRed" })
  highlight(0, "NotifyWARNIcon", { link = "NightflyYellow" })
  highlight(0, "NotifyINFOIcon", { link = "NightflyBlue" })
  highlight(0, "NotifyDEBUGIcon", { link = "NightflyGreyBlue" })
  highlight(0, "NotifyTRACEIcon", { link = "NightflyPurple" })
  highlight(0, "NotifyERRORTitle", { link = "NightflyRed" })
  highlight(0, "NotifyWARNTitle", { link = "NightflyYellow" })
  highlight(0, "NotifyINFOTitle", { link = "NightflyBlue" })
  highlight(0, "NotifyDEBUGTitle", { link = "NightflyGreyBlue" })
  highlight(0, "NotifyTRACETitle", { link = "NightflyPurple" })

  -- nvim-treesitter-context
  highlight(0, "TreesitterContext", { bg = black_blue })
  highlight(0, "TreesitterContextBottom", { underline = true, sp = slate_blue })

  -- nvim-window-picker plugin
  highlight(0, "WindowPickerStatusLine", { link = "WinBar" })
  highlight(0, "WindowPickerStatusLineNC", { link = "WinBar" })
  highlight(0, "WindowPickerWinBar", { link = "WinBar" })
  highlight(0, "WindowPickerWinBarNC", { link = "WinBar" })

  -- NvCheatsheet.nvim
  highlight(0, "NvChSection", { link = "Pmenu" })
  highlight(0, "NvChAsciiHeader", { link = "Directory" })
  highlight(0, "NvCheatsheetWhite", { bg = white, fg = dark_blue })
  highlight(0, "NvCheatsheetGray", { bg = orchid, fg = dark_blue })
  highlight(0, "NvCheatsheetBlue", { link = "NightflyBlueMode" })
  highlight(0, "NvCheatsheetCyan", { link = "NightflyTurquoiseMode" })
  highlight(0, "NvCheatsheetRed", { link = "NightflyWatermelonMode" })
  highlight(0, "NvCheatsheetGreen", { link = "NightflyEmeraldMode" })
  highlight(0, "NvCheatsheetYellow", { link = "NightflyTanMode" })
  highlight(0, "NvCheatsheetOrange", { bg = orange, fg = dark_blue })
  highlight(0, "NvCheatsheetPurple", { link = "NightflyPurpleMode" })
  highlight(0, "NvCheatsheetMagenta", { bg = violet, fg = dark_blue })

  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "NightflyGreyBlue" })
  highlight(0, "NvimTreeFolderName", { link = "NightflyBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "NightflyCelloBlue" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "NightflyBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "NightflyPurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "NightflyTan" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeCursorLine", { link = "NightflyCurrentLine" })
  highlight(0, "NvimTreeExecFile", { fg = green })
  highlight(0, "NvimTreeImageFile", { fg = violet })
  if g.nightflyTransparent ~= true and g.nightflyNormalFloat ~= true then
    highlight(0, "NvimTreeNormalFloat", { bg = bg, fg = cadet_blue })
  end
  highlight(0, "NvimTreeOpenedFile", { fg = yellow })
  highlight(0, "NvimTreeSymlink", { fg = turquoise })

  -- Rainbow Delimiters plugin
  highlight(0, "RainbowDelimiterRed", { link = "NightflyRed" })
  highlight(0, "RainbowDelimiterYellow", { link = "NightflyYellow" })
  highlight(0, "RainbowDelimiterBlue", { link = "NightflyBlue" })
  highlight(0, "RainbowDelimiterOrange", { link = "NightflyOrange" })
  highlight(0, "RainbowDelimiterGreen", { link = "NightflyGreen" })
  highlight(0, "RainbowDelimiterViolet", { link = "NightflyViolet" })
  highlight(0, "RainbowDelimiterCyan", { link = "NightflyTurquoise" })

  -- sidekick.nvim
  highlight(0, "SidekickDiffAdd", { link = "DiffAdd" })
  highlight(0, "SidekickDiffContext", { link = "DiffChange" })
  highlight(0, "SidekickDiffDelete", { link = "DiffDelete" })
  highlight(0, "SidekickSignAdd", { link = "GitSignsAdd" })
  highlight(0, "SidekickSignChange", { link = "GitSignsChange" })
  highlight(0, "SidekickSignDelete", { link = "GitSignsDelete" })

  -- snacks.nvim
  --   misc
  highlight(0, "SnacksWinBar", { link = "NightflyBlue" })
  highlight(0, "SnacksScratchKey", { link = "DiagnosticInfo" })
  --   dashboard
  highlight(0, "SnacksDashboardDesc", { link = "NightflyTurquoise" })
  highlight(0, "SnacksDashboardDir", { link = "NightflyEmerald" })
  highlight(0, "SnacksDashboardFile", { link = "NightflyGreen" })
  highlight(0, "SnacksDashboardFooter", { link = "NightflyBlue" })
  highlight(0, "SnacksDashboardHeader", { link = "NightflyBlue" })
  highlight(0, "SnacksDashboardIcon", { link = "NightflyMalibu" })
  highlight(0, "SnacksDashboardSpecial", { link = "NightflyViolet" })
  --   indent
  highlight(0, "SnacksIndent", { link = "IblIndent" })
  highlight(0, "SnacksIndentScope", { link = "IblScope" })
  --   notifier
  highlight(0, "SnacksNotifierInfo", { link = "DiagnosticInfo" })
  highlight(0, "SnacksNotifierWarn", { link = "DiagnosticWarn" })
  highlight(0, "SnacksNotifierDebug", { link = "DiagnosticHint" })
  highlight(0, "SnacksNotifierError", { link = "DiagnosticError" })
  highlight(0, "SnacksNotifierTrace", { link = "DiagnosticHint" })
  highlight(0, "SnacksNotifierIconInfo", { link = "DiagnosticInfo" })
  highlight(0, "SnacksNotifierIconWarn", { link = "DiagnosticWarn" })
  highlight(0, "SnacksNotifierIconDebug", { link = "DiagnosticHint" })
  highlight(0, "SnacksNotifierIconError", { link = "DiagnosticError" })
  highlight(0, "SnacksNotifierIconTrace", { link = "DiagnosticHint" })
  highlight(0, "SnacksNotifierTitleInfo", { link = "DiagnosticInfo" })
  highlight(0, "SnacksNotifierTitleWarn", { link = "DiagnosticWarn" })
  highlight(0, "SnacksNotifierTitleDebug", { link = "DiagnosticHint" })
  highlight(0, "SnacksNotifierTitleError", { link = "DiagnosticError" })
  highlight(0, "SnacksNotifierTitleTrace", { link = "DiagnosticHint" })
  highlight(0, "SnacksBorderTitleInfo", { link = "FloatBorder" })
  highlight(0, "SnacksBorderTitleWarn", { link = "FloatBorder" })
  highlight(0, "SnacksBorderTitleDebug", { link = "FloatBorder" })
  highlight(0, "SnacksBorderTitleError", { link = "FloatBorder" })
  highlight(0, "SnacksBorderTitleTrace", { link = "FloatBorder" })
  --   picker
  highlight(0, "SnacksPicker", { link = "Normal" })
  highlight(0, "SnacksPickerAuEvent", { link = "NightflyBlue" })
  highlight(0, "SnacksPickerCol", { link = "NightflySteelBlue" })
  highlight(0, "SnacksPickerCursorLine", { link = "Normal" })
  highlight(0, "SnacksPickerDir", { fg = graphite_blue })
  highlight(0, "SnacksPickerGitBranch", { link = "NightflyBlue" })
  highlight(0, "SnacksPickerGitBreaking", { link = "NightflyWatermelon" })
  highlight(0, "SnacksPickerGitDate", { link = "NightflyBlue" })
  highlight(0, "SnacksPickerGitStatusAdded", { link = "diffAdded" })
  highlight(0, "SnacksPickerGitStatusDeleted", { link = "diffRemoved" })
  highlight(0, "SnacksPickerGitStatusModified", { link = "NightflyRed" })
  highlight(0, "SnacksPickerGitType", { link = "NightflyViolet" })
  highlight(0, "SnacksPickerInputBorder", { link = "NightflyBlue" })
  highlight(0, "SnacksPickerKeymapLhs", { link = "NightflyBlue" })
  highlight(0, "SnacksPickerKeymapsLhs", { link = "NightflyBlue" })
  highlight(0, "SnacksPickerListCursorLine", { link = "NightflyVisual" })
  highlight(0, "SnacksPickerManPage", { link = "NightflyEmerald" })
  highlight(0, "SnacksPickerMatch", { link = "NightflyOrange" })
  highlight(0, "SnacksPickerPrompt", { link = "NightflyBlue" })
  highlight(0, "SnacksPickerRow", { link = "NightflyLavender" })
  highlight(0, "SnacksPickerSelected", { link = "NightflyWatermelon" })
  highlight(0, "SnacksPickerTitle", { link = "NightflySteelBlue" })
  highlight(0, "SnacksPickerTree", { link = "NightflyCelloBlue" })
  highlight(0, "SnacksPickerUndoAdded", { link = "diffAdded" })
  highlight(0, "SnacksPickerUndoRemoved", { link = "diffRemoved" })

  -- Telescope plugin
  highlight(0, "TelescopeBorder", { link = "FloatBorder" })
  highlight(0, "TelescopeMatching", { link = "NightflyOrange" })
  highlight(0, "TelescopeMultiIcon", { link = "NightflyWatermelon" })
  highlight(0, "TelescopeMultiSelection", { link = "NightflyEmerald" })
  highlight(0, "TelescopeNormal", { link = "NightflyAshBlue" })
  highlight(0, "TelescopePreviewDate", { link = "NightflyGreyBlue" })
  highlight(0, "TelescopePreviewGroup", { link = "NightflyGreyBlue" })
  highlight(0, "TelescopePreviewLink", { link = "NightflyTurquoise" })
  highlight(0, "TelescopePreviewMatch", { link = "NightflyVisual" })
  highlight(0, "TelescopePreviewRead", { link = "NightflyOrange" })
  highlight(0, "TelescopePreviewSize", { link = "NightflyEmerald" })
  highlight(0, "TelescopePreviewUser", { link = "NightflyGreyBlue" })
  highlight(0, "TelescopePromptPrefix", { link = "NightflyBlue" })
  highlight(0, "TelescopeResultsDiffAdd", { link = "NightflyGreen" })
  highlight(0, "TelescopeResultsDiffChange", { link = "NightflyRed" })
  highlight(0, "TelescopeResultsDiffDelete", { link = "NightflyWatermelonLine" })
  highlight(0, "TelescopeResultsSpecialComment", { link = "NightflySteelBlue" })
  highlight(0, "TelescopeSelectionCaret", { link = "NightflyWatermelon" })
  highlight(0, "TelescopeTitle", { link = "NightflySteelBlue" })
  highlight(0, "TelescopeSelection", { bg = regal_blue, fg = white_blue })

  -------------------------------------------------------------------------
  -- Legacy plugin styling
  -------------------------------------------------------------------------

  -- Coc plugin
  highlight(0, "CocInlayHint", { link = "LspInlayHint" })
  highlight(0, "CocSemTypeBuiltin", { link = "NightflyWatermelon" })
  highlight(0, "CocSemTypeClass", { link = "NightflyEmerald" })
  highlight(0, "CocSemTypeEnumMember", { link = "NightflyTurquoise" })
  highlight(0, "CocSemTypeNamespace", { link = "NightflyTurquoise" })
  highlight(0, "CocSemTypeParameter", { link = "NightflyOrchid" })
  highlight(0, "CocSemTypeProperty", { link = "NightflyLavender" })
  highlight(0, "CocSemTypeRegexp", { link = "NightflyTurquoise" })
  highlight(0, "CocSemTypeStruct", { link = "NightflyEmerald" })
  highlight(0, "CocSemTypeTypeParameter", { link = "NightflyOrchid" })
  highlight(0, "CocUnusedHighlight", { link = "NightflyAshBlue" })
  --   Coc virtual text
  highlight(0, "CocErrorVirtualText", { link = "DiagnosticVirtualTextError" })
  highlight(0, "CocWarningVirtualText", { link = "DiagnosticVirtualTextWarn" })
  highlight(0, "CocInfoVirtualText", { link = "DiagnosticVirtualTextInfo" })
  highlight(0, "CocHintVirtualText", { link = "DiagnosticVirtualTextHint" })

  -- fern.vim plugin
  highlight(0, "FernBranchSymbol", { link = "NightflyGreyBlue" })
  highlight(0, "FernLeafSymbol", { link = "NightflyBlue" })
  highlight(0, "FernLeaderSymbol", { link = "NightflyCelloBlue" })
  highlight(0, "FernBranchText", { link = "NightflyBlue" })
  highlight(0, "FernMarkedLine", { link = "NightflyVisual" })
  highlight(0, "FernMarkedText", { link = "NightflyWatermelon" })
  highlight(0, "FernRootSymbol", { link = "NightflyPurple" })
  highlight(0, "FernRootText", { link = "NightflyPurple" })

  -- fern-git-status.vim plugin
  highlight(0, "FernGitStatusBracket", { link = "NightflyGreyBlue" })
  highlight(0, "FernGitStatusIndex", { link = "NightflyEmerald" })
  highlight(0, "FernGitStatusWorktree", { link = "NightflyWatermelon" })

  -- Git commits
  highlight(0, "gitCommitBranch", { link = "NightflyBlue" })
  highlight(0, "gitCommitDiscardedFile", { link = "NightflyWatermelon" })
  highlight(0, "gitCommitDiscardedType", { link = "NightflyBlue" })
  highlight(0, "gitCommitHeader", { link = "NightflyPurple" })
  highlight(0, "gitCommitSelectedFile", { link = "NightflyEmerald" })
  highlight(0, "gitCommitSelectedType", { link = "NightflyBlue" })
  highlight(0, "gitCommitUntrackedFile", { link = "NightflyWatermelon" })
  highlight(0, "gitEmail", { link = "NightflyBlue" })

  -- Git commit diffs
  highlight(0, "diffAdded", { link = "NightflyGreen" })
  highlight(0, "diffChanged", { link = "NightflyWatermelon" })
  highlight(0, "diffIndexLine", { link = "NightflyWatermelon" })
  highlight(0, "diffLine", { link = "NightflyBlue" })
  highlight(0, "diffRemoved", { link = "NightflyRed" })
  highlight(0, "diffSubname", { link = "NightflyBlue" })

  -- Glyph palette
  highlight(0, "GlyphPalette1", { link = "NightflyWatermelon" })
  highlight(0, "GlyphPalette2", { link = "NightflyEmerald" })
  highlight(0, "GlyphPalette3", { link = "NightflyYellow" })
  highlight(0, "GlyphPalette4", { link = "NightflyBlue" })
  highlight(0, "GlyphPalette6", { link = "NightflyTurquoise" })
  highlight(0, "GlyphPalette7", { link = "NightflyWhite" })
  highlight(0, "GlyphPalette9", { link = "NightflyWatermelon" })

  -- Misc items
  highlight(0, "bufExplorerHelp", { link = "NightflyCadetBlue" })
  highlight(0, "bufExplorerSortBy", { link = "NightflyCadetBlue" })
  highlight(0, "CleverFDefaultLabel", { link = "NightflyWatermelon" })
  highlight(0, "CtrlPMatch", { link = "NightflyOrange" })
  highlight(0, "Directory", { link = "NightflyBlue" })
  highlight(0, "netrwClassify", { link = "NightflyWatermelon" })
  highlight(0, "netrwDir", { link = "NightflyBlue" })
  highlight(0, "netrwExe", { link = "NightflyTan" })
  highlight(0, "tagName", { link = "NightflyTurquoise" })
  highlight(0, "Cheat40Header", { link = "NightflyBlue" })
  highlight(0, "yamlBlockMappingKey", { link = "NightflyBlue" })
  highlight(0, "yamlFlowMappingKey", { link = "NightflyBlue" })
  if g.nightflyUnderlineMatchParen then
    highlight(0, "MatchWord", { underline = true, sp = orange })
  else
    highlight(0, "MatchWord", { link = "NightflyOrange" })
  end
  highlight(0, "snipLeadingSpaces", { link = "Normal" })
  highlight(0, "MatchWordCur", { bg = bg })
  highlight(0, "fishInnerVariable", { link = "NightflyTurquoise" })
  highlight(0, "fishParameter", { link = "NightflyTurquoise" })
  highlight(0, "fishVariable", { link = "NightflyTurquoise" })

  -- FZF plugin
  highlight(0, "FzfBorder", { fg = slate_blue })
  highlight(0, "FzfFgPlus", { fg = white_blue })
  highlight(0, "FzfNormal", { fg = ash_blue })
  highlight(0, "FzfPrompt", { fg = blue, bg = slate_blue })
  highlight(0, "FzfSubstring", { fg = orange })
  g.fzf_colors = {
    ["fg"] = { "fg", "FzfNormal" },
    ["bg"] = { "bg", "Normal" },
    ["hl"] = { "fg", "FzfSubstring" },
    ["fg+"] = { "fg", "FzfFgPlus" },
    ["bg+"] = { "bg", "Pmenu" },
    ["hl+"] = { "fg", "FzfSubstring" },
    ["info"] = { "fg", "String" },
    ["border"] = { "fg", "FzfBorder" },
    ["prompt"] = { "fg", "FzfPrompt" },
    ["pointer"] = { "fg", "Exception" },
    ["marker"] = { "fg", "FzfSubstring" },
    ["spinner"] = { "fg", "Type" },
    ["header"] = { "fg", "CursorLineNr" },
    ["gutter"] = { "bg", "Normal" },
  }
end

-- User customization of theme colors.
--
M.custom_colors = function(colors)
  black = colors.black and colors.black or M.palette.black
  white = colors.white and colors.white or M.palette.white
  bg = colors.bg and colors.bg or M.palette.bg
  black_blue = colors.black_blue and colors.black_blue or M.palette.black_blue
  dark_blue = colors.dark_blue and colors.dark_blue or M.palette.dark_blue
  ink_blue = colors.ink_blue and colors.ink_blue or M.palette.ink_blue
  deep_blue = colors.deep_blue and colors.deep_blue or M.palette.deep_blue
  storm_blue = colors.storm_blue and colors.storm_blue or M.palette.storm_blue
  stone_blue = colors.stone_blue and colors.stone_blue or M.palette.stone_blue
  slate_blue = colors.slate_blue and colors.slate_blue or M.palette.slate_blue
  pickle_blue = colors.pickle_blue and colors.pickle_blue or M.palette.pickle_blue
  regal_blue = colors.regal_blue and colors.regal_blue or M.palette.regal_blue
  carbon_blue = colors.carbon_blue and colors.carbon_blue or M.palette.carbon_blue
  steel_blue = colors.steel_blue and colors.steel_blue or M.palette.steel_blue
  grey_blue = colors.grey_blue and colors.grey_blue or M.palette.grey_blue
  cadet_blue = colors.cadet_blue and colors.cadet_blue or M.palette.cadet_blue
  ash_blue = colors.ash_blue and colors.ash_blue or M.palette.ash_blue
  white_blue = colors.white_blue and colors.white_blue or M.palette.white_blue
  red = colors.red and colors.red or M.palette.red
  watermelon = colors.watermelon and colors.watermelon or M.palette.watermelon
  cinnamon = colors.cinnamon and colors.cinnamon or M.palette.cinnamon
  orchid = colors.orchid and colors.orchid or M.palette.orchid
  orange = colors.orange and colors.orange or M.palette.orange
  peach = colors.peach and colors.peach or M.palette.peach
  tan = colors.tan and colors.tan or M.palette.tan
  yellow = colors.yellow and colors.yellow or M.palette.yellow
  lime = colors.lime and colors.lime or M.palette.lime
  green = colors.green and colors.green or M.palette.green
  emerald = colors.emerald and colors.emerald or M.palette.emerald
  turquoise = colors.turquoise and colors.turquoise or M.palette.turquoise
  malibu = colors.malibu and colors.malibu or M.palette.malibu
  blue = colors.blue and colors.blue or M.palette.blue
  lavender = colors.lavender and colors.lavender or M.palette.lavender
  violet = colors.violet and colors.violet or M.palette.violet
  purple = colors.purple and colors.purple or M.palette.purple
  cyan_blue = colors.cyan_blue and colors.cyan_blue or M.palette.cyan_blue
  bay_blue = colors.bay_blue and colors.bay_blue or M.palette.bay_blue
  kashmir = colors.kashmir and colors.kashmir or M.palette.kashmir
  plant = colors.plant and colors.plant or M.palette.plant
  bermuda = colors.bermuda and colors.bermuda or M.palette.bermuda
  haze = colors.haze and colors.haze or M.palette.haze

  -- Rebuild the palette with custom colors.
  M.palette = nightfly_palette()
end

return M
