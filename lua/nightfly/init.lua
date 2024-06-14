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
local deep_blue = "#0e293f"
local slate_blue = "#2c3043"
local pickle_blue = "#38507a"
local cello_blue = "#1f4462"
local regal_blue = "#1d3b53"
local steel_blue = "#4b6479"
local grey_blue = "#7c8f8f"
local cadet_blue = "#a1aab8"
local ash_blue = "#acb4c2"
local white_blue = "#d6deeb"
-- Core theme colors
local yellow = "#e3d18a"
local peach = "#ffcb8b"
local tan = "#ecc48d"
local orange = "#f78c6c"
local orchid = "#e39aa6"
local red = "#fc514e"
local watermelon = "#ff5874"
local purple = "#ae81ff"
local violet = "#c792ea"
local lavender = "#b0b2f4"
local blue = "#82aaff"
local malibu = "#87bcff"
local turquoise = "#7fdbca"
local emerald = "#21c7a8"
local green = "#a1cd5e"
-- Extra colors
local cyan_blue = "#296596"
local bay_blue = "#24567F"
local kashmir_blue = "#4d618e"
local plant_green = "#2a4e57"

local M = {}

M.palette = {
    black = black,
    white = white,
    bg = bg,
    black_blue = black_blue,
    dark_blue = dark_blue,
    deep_blue = deep_blue,
    slate_blue = slate_blue,
    pickle_blue = pickle_blue,
    regal_blue = regal_blue,
    steel_blue = steel_blue,
    grey_blue = grey_blue,
    cadet_blue = cadet_blue,
    ash_blue = ash_blue,
    white_blue = white_blue,
    yellow = yellow,
    peach = peach,
    tan = tan,
    orange = orange,
    orchid = orchid,
    red = red,
    watermelon = watermelon,
    purple = purple,
    violet = violet,
    lavender = lavender,
    blue = blue,
    malibu = malibu,
    turquoise = turquoise,
    emerald = emerald,
    green = green,
    cyan_blue = cyan_blue,
    bay_blue = bay_blue,
    kashmir_blue = kashmir_blue,
    plant_green = plant_green,
}

M.style = function()
    -------------------------------------------------------------------------
    -- Custom styling groups
    -------------------------------------------------------------------------

    highlight(0, "NightflyVisual", { bg = M.palette.regal_blue })
    highlight(0, "NightflyWhite", { fg = M.palette.white })
    highlight(0, "NightflyDeepBlue", { fg = M.palette.deep_blue })
    highlight(0, "NightflySlateBlue", { fg = M.palette.slate_blue })
    highlight(0, "NightflyPickleBlue", { fg = M.palette.pickle_blue })
    highlight(0, "NightflyCelloBlue", { fg = M.palette.cello_blue })
    highlight(0, "NightflyRegalBlue", { fg = M.palette.regal_blue })
    highlight(0, "NightflySteelBlue", { fg = M.palette.steel_blue })
    highlight(0, "NightflyGreyBlue", { fg = M.palette.grey_blue })
    highlight(0, "NightflyCadetBlue", { fg = M.palette.cadet_blue })
    highlight(0, "NightflyAshBlue", { fg = M.palette.ash_blue })
    highlight(0, "NightflyWhiteBlue", { fg = M.palette.white_blue })
    highlight(0, "NightflyYellow", { fg = M.palette.yellow })
    highlight(0, "NightflyPeach", { fg = M.palette.peach })
    highlight(0, "NightflyTan", { fg = M.palette.tan })
    highlight(0, "NightflyOrange", { fg = M.palette.orange })
    highlight(0, "NightflyOrchid", { fg = M.palette.orchid })
    highlight(0, "NightflyRed", { fg = M.palette.red })
    highlight(0, "NightflyWatermelon", { fg = M.palette.watermelon })
    highlight(0, "NightflyPurple", { fg = M.palette.purple })
    highlight(0, "NightflyViolet", { fg = M.palette.violet })
    highlight(0, "NightflyLavender", { fg = M.palette.lavender })
    highlight(0, "NightflyBlue", { fg = M.palette.blue })
    highlight(0, "NightflyMalibu", { fg = M.palette.malibu })
    highlight(0, "NightflyTurquoise", { fg = M.palette.turquoise })
    highlight(0, "NightflyEmerald", { fg = M.palette.emerald })
    highlight(0, "NightflyGreen", { fg = M.palette.green })
    -- Misc helpers
    highlight(0, "NightflyUnderline", { underline = true })
    highlight(0, "NightflyNoCombine", { nocombine = true })
    -- Statusline helper colors
    highlight(0, "NightflyBlueMode", { bg = M.palette.blue, fg = M.palette.dark_blue })
    highlight(0, "NightflyEmeraldMode", { bg = M.palette.emerald, fg = M.palette.dark_blue })
    highlight(0, "NightflyPurpleMode", { bg = M.palette.purple, fg = M.palette.dark_blue })
    highlight(0, "NightflyWatermelonMode", { bg = M.palette.watermelon, fg = M.palette.dark_blue })
    highlight(0, "NightflyTanMode", { bg = M.palette.tan, fg = M.palette.dark_blue })
    highlight(0, "NightflyTurquoiseMode", { bg = M.palette.turquoise, fg = M.palette.dark_blue })
    -- Generic line helper colors
    highlight(0, "NightflyEmeraldLine", { bg = M.palette.slate_blue, fg = M.palette.emerald })
    highlight(0, "NightflyGreyBlueLine", { bg = M.palette.dark_blue, fg = M.palette.grey_blue })
    highlight(0, "NightflyTanLine", { bg = M.palette.dark_blue, fg = M.palette.tan })
    highlight(0, "NightflyWatermelonLine", { bg = M.palette.slate_blue, fg = M.palette.watermelon })
    highlight(0, "NightflyBlueLineActive", { bg = M.palette.regal_blue, fg = M.palette.blue })
    highlight(0, "NightflyRedLineActive", { bg = M.palette.regal_blue, fg = M.palette.red })
    highlight(0, "NightflyTanLineActive", { bg = M.palette.regal_blue, fg = M.palette.tan })
    highlight(0, "NightflyTurquoiseLineActive", { bg = M.palette.regal_blue, fg = M.palette.turquoise })
    highlight(0, "NightflyWhiteLineActive", { bg = M.palette.regal_blue, fg = M.palette.white_blue })
    highlight(0, "NightflyYellowLineActive", { bg = M.palette.regal_blue, fg = M.palette.yellow })

    -------------------------------------------------------------------------
    -- Standard styling
    -------------------------------------------------------------------------

    -- Specify the colors used by the inbuilt terminal
    if g.nightflyTerminalColors then
        g.terminal_color_0 = M.palette.regal_blue
        g.terminal_color_1 = M.palette.red
        g.terminal_color_2 = M.palette.green
        g.terminal_color_3 = M.palette.yellow
        g.terminal_color_4 = M.palette.blue
        g.terminal_color_5 = M.palette.violet
        g.terminal_color_6 = M.palette.turquoise
        g.terminal_color_7 = M.palette.white
        g.terminal_color_8 = M.palette.grey_blue
        g.terminal_color_9 = M.palette.watermelon
        g.terminal_color_10 = M.palette.emerald
        g.terminal_color_11 = M.palette.tan
        g.terminal_color_12 = M.palette.blue
        g.terminal_color_13 = M.palette.purple
        g.terminal_color_14 = M.palette.turquoise
        g.terminal_color_15 = M.palette.white_blue
    end

    -- Background and text
    highlight(0, "Normal", { bg = M.palette.bg, fg = M.palette.white })

    -- Color of mode text, -- INSERT --
    highlight(0, "ModeMsg", { fg = M.palette.cadet_blue })

    -- Comments
    if g.nightflyItalics then
        highlight(0, "Comment", { fg = M.palette.grey_blue, italic = true })
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
    highlight(0, "Title", { fg = M.palette.orange })

    -- const, static
    highlight(0, "StorageClass", { link = "NightflyViolet" })

    -- void, intptr_t
    highlight(0, "Type", { fg = M.palette.emerald })

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
    highlight(0, "NonText", { fg = M.palette.steel_blue })

    -- sizeof
    highlight(0, "Operator", { link = "NightflyWatermelon" })

    -- for, while
    highlight(0, "Repeat", { link = "NightflyViolet" })

    -- Search
    highlight(0, "Search", { bg = M.palette.pickle_blue, fg = M.palette.white_blue })
    highlight(0, "CurSearch", { bg = M.palette.orange, fg = M.palette.black })
    highlight(0, "IncSearch", { bg = M.palette.peach, fg = M.palette.black })

    -- '\n' sequences
    highlight(0, "Special", { link = "NightflyWatermelon" })

    -- if, else
    highlight(0, "Statement", { fg = M.palette.violet })

    -- struct, union, enum, typedef
    highlight(0, "Structure", { link = "NightflyBlue" })

    -- Status, split and tab lines
    highlight(0, "StatusLine", { bg = M.palette.slate_blue, fg = M.palette.white })
    highlight(0, "StatusLineNC", { bg = M.palette.slate_blue, fg = M.palette.cadet_blue })
    highlight(0, "Tabline", { bg = M.palette.slate_blue, fg = M.palette.cadet_blue })
    highlight(0, "TablineSel", { bg = M.palette.dark_blue, fg = M.palette.blue })
    highlight(0, "TablineSelSymbol", { bg = M.palette.dark_blue, fg = M.palette.emerald })
    highlight(0, "TablineFill", { bg = M.palette.slate_blue, fg = M.palette.slate_blue })
    highlight(0, "StatusLineTerm", { bg = M.palette.slate_blue, fg = M.palette.white })
    highlight(0, "StatusLineTermNC", { bg = M.palette.slate_blue, fg = M.palette.cadet_blue })
    if g.nightflyWinSeparator == 0 then
        highlight(0, "VertSplit", { bg = M.palette.black, fg = M.palette.black })
    elseif g.nightflyWinSeparator == 1 then
        highlight(0, "VertSplit", { bg = M.palette.slate_blue, fg = M.palette.slate_blue })
    else
        highlight(0, "VertSplit", { bg = M.palette.none, fg = M.palette.slate_blue })
    end

    -- Visual selection
    highlight(0, "Visual", { link = "NightflyVisual" })
    highlight(0, "VisualNOS", { bg = M.palette.regal_blue, fg = M.palette.white })

    -- Errors, warnings and whitespace-eol
    highlight(0, "Error", { bg = M.palette.bg, fg = M.palette.red })
    highlight(0, "ErrorMsg", { bg = M.palette.bg, fg = M.palette.red })
    highlight(0, "WarningMsg", { bg = M.palette.bg, fg = M.palette.orange })

    -- Auto-text-completion menu
    highlight(0, "Pmenu", { bg = M.palette.deep_blue, fg = M.palette.white })
    highlight(0, "PmenuSel", { bg = M.palette.cyan_blue, fg = M.palette.white_blue })
    highlight(0, "PmenuSbar", { bg = M.palette.deep_blue })
    highlight(0, "PmenuThumb", { bg = M.palette.steel_blue })
    highlight(0, "WildMenu", { bg = M.palette.cyan_blue, fg = M.palette.white_blue })

    -- Spelling errors
    if g.nightflyUndercurls then
        highlight(0, "SpellBad", { bg = M.palette.none, undercurl = true, sp = M.palette.red })
        highlight(0, "SpellCap", { bg = M.palette.none, undercurl = true, sp = M.palette.blue })
        highlight(0, "SpellRare", { bg = M.palette.none, undercurl = true, sp = M.palette.yellow })
        highlight(0, "SpellLocal", { bg = M.palette.none, undercurl = true, sp = M.palette.blue })
    else
        highlight(0, "SpellBad", { bg = M.palette.none, fg = M.palette.red, underline = true, sp = M.palette.red })
        highlight(0, "SpellCap", { bg = M.palette.none, fg = M.palette.blue, underline = true, sp = M.palette.blue })
        highlight(0, "SpellRare", { bg = M.palette.none, fg = M.palette.yellow, underline = true, sp = M.palette.yellow })
        highlight(0, "SpellLocal", { bg = M.palette.none, fg = M.palette.blue, underline = true, sp = M.palette.blue })
    end

    -- Misc
    highlight(0, "Question", { fg = M.palette.green })
    highlight(0, "MoreMsg", { fg = M.palette.red })
    highlight(0, "LineNr", { bg = M.palette.bg, fg = M.palette.steel_blue })
    if g.nightflyCursorColor then
        highlight(0, "Cursor", { fg = M.palette.bg, bg = M.palette.blue })
    else
        highlight(0, "Cursor", { fg = M.palette.bg, bg = M.palette.cadet_blue })
    end
    highlight(0, "lCursor", { fg = M.palette.bg, bg = M.palette.cadet_blue })
    highlight(0, "CursorLineNr", { bg = M.palette.dark_blue, fg = M.palette.blue })
    highlight(0, "CursorColumn", { bg = M.palette.dark_blue })
    highlight(0, "CursorLine", { bg = M.palette.dark_blue })
    highlight(0, "Folded", { bg = M.palette.dark_blue, fg = M.palette.green })
    highlight(0, "FoldColumn", { bg = M.palette.slate_blue, fg = M.palette.green })
    highlight(0, "SignColumn", { bg = M.palette.bg, fg = M.palette.green })
    highlight(0, "Todo", { bg = M.palette.deep_blue, fg = M.palette.yellow })
    highlight(0, "SpecialKey", { bg = M.palette.bg, fg = M.palette.blue })
    if g.nightflyUnderlineMatchParen then
        highlight(0, "MatchParen", { bg = M.palette.bg, underline = true })
    else
        highlight(0, "MatchParen", { link = "NightflyVisual" })
    end
    highlight(0, "Ignore", { link = "NightflyBlue" })
    highlight(0, "Underlined", { fg = M.palette.green })
    highlight(0, "QuickFixLine", { bg = M.palette.deep_blue })
    highlight(0, "Delimiter", { link = "NightflyWhite" })
    highlight(0, "qfFileName", { link = "NightflyEmerald" })

    -- Color column (after line 80)
    highlight(0, "ColorColumn", { bg = M.palette.black_blue })

    -- Conceal color
    highlight(0, "Conceal", { bg = M.palette.none, fg = M.palette.ash_blue })

    -- nvim -d
    highlight(0, "DiffAdd", { bg = M.palette.plant_green })
    highlight(0, "DiffChange", { bg = M.palette.slate_blue })
    highlight(0, "DiffDelete", { bg = M.palette.slate_blue, fg = M.palette.steel_blue })
    highlight(0, "DiffText", { bg = M.palette.kashmir_blue })

    -------------------------------------------------------------------------
    -- Neovim standard styling
    -------------------------------------------------------------------------

    highlight(0, "Whitespace", { fg = M.palette.regal_blue })
    highlight(0, "TermCursor", { bg = M.palette.cadet_blue, fg = M.palette.black })
    if g.nightflyNormalFloat then
        highlight(0, "NormalFloat", { bg = M.palette.bg, fg = M.palette.cadet_blue })
    else
        highlight(0, "NormalFloat", { bg = M.palette.dark_blue, fg = M.palette.white })
    end
    highlight(0, "FloatBorder", { bg = M.palette.bg, fg = M.palette.slate_blue })
    highlight(0, "WinBar", { bg = M.palette.deep_blue, fg = M.palette.white })
    highlight(0, "WinBarNC", { bg = M.palette.deep_blue, fg = M.palette.cadet_blue })
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
    highlight(0, "@markup.environment", { link = "NightflyWatermelon" })
    highlight(0, "@markup.environment.name", { link = "NightflyEmerald" })
    highlight(0, "@markup.heading", { link = "NightflyViolet" })
    highlight(0, "@markup.italic", { fg = M.palette.orchid, italic = true })
    highlight(0, "@markup.link", { link = "NightflyGreen" })
    highlight(0, "@markup.link.label", { link = "NightflyGreen" })
    highlight(0, "@markup.link.url", { fg = M.palette.purple, underline = true, sp = M.palette.grey_blue })
    highlight(0, "@markup.list", { link = "NightflyWatermelon" })
    highlight(0, "@markup.list.checked", { link = "NightflyTurquoise" })
    highlight(0, "@markup.list.unchecked", { link = "NightflyBlue" })
    highlight(0, "@markup.math", { link = "NightflyWatermelon" })
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

    -- Neovim LEGACY Tree-sitter (Neovim 0.9)
    highlight(0, "@conditional", { link = "@keyword.conditional" })
    highlight(0, "@define", { link = "@keyword.directive.define" })
    highlight(0, "@error", { link = "NightflyRed" })
    highlight(0, "@exception", { link = "@keyword.exception" })
    highlight(0, "@field", { link = "@variable.member" })
    highlight(0, "@include", { link = "@keyword.import" })
    highlight(0, "@method", { link = "@function.method" })
    highlight(0, "@namespace", { link = "@module" })
    highlight(0, "@namespace.builtin", { link = "@module.builtin" })
    highlight(0, "@parameter", { link = "@variable.parameter" })
    highlight(0, "@preproc", { link = "@keyword.directive" })
    highlight(0, "@punctuation.special", { link = "@markup.list" })
    highlight(0, "@repeat", { link = "@keyword.repeat" })
    highlight(0, "@string.regex", { link = "@string.regexp" })
    highlight(0, "@storageclass", { link = "@keyword.storage" })
    highlight(0, "@symbol", { link = "@string.special.symbol" })
    highlight(0, "@text.danger", { link = "@comment.error" })
    highlight(0, "@text.diff.add", { link = "@diff.plus" })
    highlight(0, "@text.diff.change", { link = "@diff.delta" })
    highlight(0, "@text.diff.delete", { link = "@diff.minus" })
    highlight(0, "@text.emphasis", { link = "@markup.italic" })
    highlight(0, "@text.environment", { link = "@markup.environment" })
    highlight(0, "@text.environment.name", { link = "@markup.environment.name" })
    highlight(0, "@text.literal", { link = "@markup.raw" })
    highlight(0, "@text.math", { link = "@markup.math" })
    highlight(0, "@text.note", { link = "@comment.note" })
    highlight(0, "@text.reference", { link = "@markup.link" })
    highlight(0, "@text.strike", { link = "@markup.strikethrough" })
    highlight(0, "@text.strong", { link = "@markup.strong" })
    highlight(0, "@text.title", { link = "@markup.heading" })
    highlight(0, "@text.todo", { link = "@comment.todo" })
    highlight(0, "@text.underline", { link = "@markup.underline" })
    highlight(0, "@text.uri", { link = "@markup.link.url" })
    highlight(0, "@text.warning", { link = "@comment.warning" })

    -- Language specific Tree-sitter overrides.
    highlight(0, "@attribute.zig", { link = "NightflyViolet" })
    highlight(0, "@character.special.vim", { link = "NightflyBlue" })
    highlight(0, "@function.macro.vim", { link = "NightflyBlue" })
    highlight(0, "@keyword.gitcommit", { link = "NightflyBlue" })
    highlight(0, "@keyword.import.bash", { link = "@keyword" })
    highlight(0, "@keyword.import.rust", { link = "@keyword" })
    highlight(0, "@keyword.storage.rust", { link = "NightflyViolet" })
    highlight(0, "@markup.heading.1.markdown", { link = "NightflyEmerald" })
    highlight(0, "@markup.heading.1.vimdoc", { link = "NightflyBlue" })
    highlight(0, "@markup.heading.2.markdown", { link = "NightflyLavender" })
    highlight(0, "@markup.heading.2.vimdoc", { link = "NightflyBlue" })
    highlight(0, "@markup.heading.3.markdown", { link = "NightflyTurquoise" })
    highlight(0, "@markup.heading.4.markdown", { link = "NightflyOrange" })
    highlight(0, "@markup.heading.5.markdown", { link = "NightflyMalibu" })
    highlight(0, "@markup.heading.6.markdown", { link = "NightflyViolet" })
    highlight(0, "@markup.heading.help", { link = "NightflyMalibu" })
    highlight(0, "@markup.heading.markdown", { link = "NightflyMalibu" })
    highlight(0, "@markup.link.gitcommit", { link = "NightflyBlue" })
    highlight(0, "@markup.link.markdown_inline", {})
    highlight(0, "@markup.link.url.gitcommit", { link = "NightflyEmerald" })
    if g.nightflyItalics then
        highlight(0, "@markup.link.url.astro", { fg = M.palette.violet, italic = true })
        highlight(0, "@markup.link.url.html", { fg = M.palette.violet, italic = true })
        highlight(0, "@markup.link.url.svelte", { fg = M.palette.violet, italic = true })
        highlight(0, "@markup.link.url.vue", { fg = M.palette.violet, italic = true })
    else
        highlight(0, "@markup.link.url.astro", { link = "NightflyViolet" })
        highlight(0, "@markup.link.url.html", { link = "NightflyViolet" })
        highlight(0, "@markup.link.url.svelte", { link = "NightflyViolet" })
        highlight(0, "@markup.link.url.vue", { link = "NightflyViolet" })
    end
    highlight(0, "@markup.raw.vimdoc", { link = "NightflyOrchid" })
    highlight(0, "@punctuation.delimiter.astro", { link = "NightflyWatermelon" })
    highlight(0, "@punctuation.delimiter.css", { link = "NightflyWatermelon" })
    highlight(0, "@punctuation.delimiter.rust", { link = "NightflyWatermelon" })
    highlight(0, "@punctuation.delimiter.scss", { link = "NightflyWatermelon" })
    highlight(0, "@punctuation.delimiter.yaml", { link = "NightflyWatermelon" })
    highlight(0, "@variable.builtin.vim", { link = "NightflyEmerald" })
    highlight(0, "@variable.member.yaml", { link = "NightflyBlue" })
    highlight(0, "@variable.parameter.bash", { link = "NightflyTurquoise" })
    highlight(0, "@variable.scss", { link = "NightflyTurquoise" })
    highlight(0, "@variable.vim", { link = "NightflyTurquoise" })

    -- Language specific LEGACY Tree-sitter overrides (Neovim 0.9).
    highlight(0, "@field.yaml", { link = "@variable.member.yaml" })
    highlight(0, "@include.rust", { link = "@keyword.import.rust" })
    highlight(0, "@parameter.bash", { link = "@variable.parameter.bash" })
    highlight(0, "@storageclass.rust", { link = "@keyword.storage.rust" })
    highlight(0, "@text.literal.block.vimdoc", { link = "@markup.raw.block.vimdoc" })
    highlight(0, "@text.literal.vimdoc", { link = "@markup.raw.vimdoc" })
    highlight(0, "@text.reference.gitcommit", { link = "@markup.link.gitcommit" })
    highlight(0, "@text.reference.markdown_inline", { link = "@markup.link.label" })
    highlight(0, "@text.title.1.markdown", { link = "@markup.heading.1.markdown" })
    highlight(0, "@text.title.1.marker.markdown", { link = "@markup.list" })
    highlight(0, "@text.title.1.vimdoc", { link = "@markup.heading.1.vimdoc" })
    highlight(0, "@text.title.2.markdown", { link = "@markup.heading.2.markdown" })
    highlight(0, "@text.title.2.marker.markdown", { link = "@markup.list" })
    highlight(0, "@text.title.2.vimdoc", { link = "@markup.heading.2.vimdoc" })
    highlight(0, "@text.title.3.markdown", { link = "@markup.heading.3.markdown" })
    highlight(0, "@text.title.3.marker.markdown", { link = "@markup.list" })
    highlight(0, "@text.title.4.markdown", { link = "@markup.heading.4.markdown" })
    highlight(0, "@text.title.4.marker.markdown", { link = "@markup.list" })
    highlight(0, "@text.title.5.markdown", { link = "@markup.heading.5.markdown" })
    highlight(0, "@text.title.5.marker.markdown", { link = "@markup.list" })
    highlight(0, "@text.title.6.markdown", { link = "@markup.heading.6.markdown" })
    highlight(0, "@text.title.6.marker.markdown", { link = "@markup.list" })
    highlight(0, "@text.title.help", { link = "@markup.heading.help" })
    highlight(0, "@text.title.markdown", { link = "@markup.heading.markdown" })
    highlight(0, "@text.uri.astro", { link = "@markup.link.url.astro" })
    highlight(0, "@text.uri.gitcommit", { link = "@markup.link.url.gitcommit" })
    highlight(0, "@text.uri.html", { link = "@markup.link.url.html" })
    highlight(0, "@text.uri.svelte", { link = "@markup.link.url.svelte" })
    highlight(0, "@text.uri.vue", { link = "@markup.link.url.vue" })

    -- Neovim LSP semantic highlights.
    highlight(0, "@lsp.type.boolean", { link = "@boolean" })
    highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
    highlight(0, "@lsp.type.builtinType", { link = "@type.builtin" })
    highlight(0, "@lsp.type.class", { link = "@type" })
    highlight(0, "@lsp.type.enum", { link = "@type" })
    highlight(0, "@lsp.type.enumMember", { link = "@constant" })
    highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
    highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
    highlight(0, "@lsp.type.generic", { link = "@variable" })
    highlight(0, "@lsp.type.interface", { link = "@type" })
    highlight(0, "@lsp.type.keyword", { link = "@keyword" })
    highlight(0, "@lsp.type.lifetime", { link = "@storageclass" })
    highlight(0, "@lsp.type.macro", {}) -- Use fallback Tree-sitter style for this Semantic Token
    highlight(0, "@lsp.type.magicFunction", { link = "@function" })
    highlight(0, "@lsp.type.namespace", { link = "@namespace" })
    highlight(0, "@lsp.type.number", { link = "@number" })
    highlight(0, "@lsp.type.operator", {}) -- Use fallback Tree-sitter style for this Semantic Token
    highlight(0, "@lsp.type.parameter", { link = "@parameter" })
    highlight(0, "@lsp.type.property", { link = "@property" })
    highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
    highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
    highlight(0, "@lsp.type.string", { link = "@string" })
    highlight(0, "@lsp.type.struct", { link = "@type" })
    highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
    if g.nightflyUndercurls then
        highlight(0, "@lsp.type.unresolvedReference", { undercurl = true, sp = M.palette.red })
    else
        highlight(0, "@lsp.type.unresolvedReference", { underline = true, sp = M.palette.red })
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
        highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = M.palette.red })
        highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = M.palette.yellow })
        highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = M.palette.malibu })
        highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = M.palette.turquoise })
        highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = M.palette.emerald })
    else
        highlight(0, "DiagnosticUnderlineError", { underline = true, sp = M.palette.red })
        highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = M.palette.yellow })
        highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = M.palette.malibu })
        highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = M.palette.turquoise })
        highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = M.palette.emerald })
    end
    if g.nightflyVirtualTextColor then
        highlight(0, "DiagnosticVirtualTextError", { bg = M.palette.dark_blue, fg = M.palette.red })
        highlight(0, "DiagnosticVirtualTextWarn", { bg = M.palette.dark_blue, fg = M.palette.yellow })
        highlight(0, "DiagnosticVirtualTextInfo", { bg = M.palette.dark_blue, fg = M.palette.malibu })
        highlight(0, "DiagnosticVirtualTextHint", { bg = M.palette.dark_blue, fg = M.palette.turquoise })
        highlight(0, "DiagnosticVirtualTextOk", { bg = M.palette.dark_blue, fg = M.palette.emerald })
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
    highlight(0, "LspInlayHint", { bg = M.palette.dark_blue, fg = M.palette.grey_blue })
    highlight(0, "LspReferenceText", { link = "NightflyVisual" })
    highlight(0, "LspReferenceRead", { link = "NightflyVisual" })
    highlight(0, "LspReferenceWrite", { link = "NightflyVisual" })
    highlight(0, "LspSignatureActiveParameter", { bg = M.palette.slate_blue })

    -------------------------------------------------------------------------
    -- Legacy language styling
    -------------------------------------------------------------------------

    -- Help
    highlight(0, "helpCommand", { link = "NightflyOrchid" })
    highlight(0, "helpExample", { link = "NightflyGreen" })
    highlight(0, "helpHeadline", { link = "NightflyBlue" })
    highlight(0, "helpHyperTextEntry", { link = "NightflyTurquoise" })
    highlight(0, "helpSectionDelim", { link = "NightflyBlue" })

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
        highlight(0, "markdownItalic", { fg = M.palette.orchid, italic = true })
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
    highlight(0, "xmlAttrib", { link = "NightflyGreen" })
    highlight(0, "xmlEndTag", { link = "NightflyBlue" })
    highlight(0, "xmlTag", { link = "NightflyGreen" })
    highlight(0, "xmlTagName", { link = "NightflyBlue" })

    -------------------------------------------------------------------------
    -- Legacy plugin styling
    -------------------------------------------------------------------------

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

    -- Tagbar plugin
    highlight(0, "TagbarFoldIcon", { link = "NightflyCadetBlue" })
    highlight(0, "TagbarVisibilityPublic", { link = "NightflyGreen" })
    highlight(0, "TagbarVisibilityProtected", { link = "NightflyGreen" })
    highlight(0, "TagbarVisibilityPrivate", { link = "NightflyGreen" })
    highlight(0, "TagbarKind", { link = "NightflyEmerald" })

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
    highlight(0, "erubyDelimiter", { link = "NightflyWatermelon" })
    highlight(0, "jsonKeyword", { link = "NightflyBlue" })
    highlight(0, "jsonBoolean", { link = "NightflyTurquoise" })
    highlight(0, "jsonQuote", { link = "NightflyWhite" })
    highlight(0, "netrwClassify", { link = "NightflyWatermelon" })
    highlight(0, "netrwDir", { link = "NightflyBlue" })
    highlight(0, "netrwExe", { link = "NightflyTan" })
    highlight(0, "tagName", { link = "NightflyTurquoise" })
    highlight(0, "Cheat40Header", { link = "NightflyBlue" })
    highlight(0, "yamlBlockMappingKey", { link = "NightflyBlue" })
    highlight(0, "yamlFlowMappingKey", { link = "NightflyBlue" })
    if g.nightflyUnderlineMatchParen then
        highlight(0, "MatchWord", { underline = true, sp = M.palette.orange })
    else
        highlight(0, "MatchWord", { link = "NightflyOrange" })
    end
    highlight(0, "snipLeadingSpaces", { bg = M.palette.bg, fg = M.palette.white })
    highlight(0, "MatchWordCur", { bg = M.palette.bg })
    highlight(0, "fishInnerVariable", { link = "NightflyTurquoise" })
    highlight(0, "fishParameter", { link = "NightflyTurquoise" })
    highlight(0, "fishVariable", { link = "NightflyTurquoise" })

    -- FZF plugin
    highlight(0, "FzfBorder", { fg = M.palette.slate_blue })
    highlight(0, "FzfFgPlus", { fg = M.palette.white_blue })
    highlight(0, "FzfNormal", { fg = M.palette.ash_blue })
    highlight(0, "FzfPrompt", { fg = M.palette.blue, bg = M.palette.slate_blue })
    highlight(0, "FzfSubstring", { fg = M.palette.orange })
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
    }

    -- mistfly-statusline plugin
    highlight(0, "MistflyNormal", { link = "NightflyBlueMode" })
    highlight(0, "MistflyInsert", { link = "NightflyEmeraldMode" })
    highlight(0, "MistflyVisual", { link = "NightflyPurpleMode" })
    highlight(0, "MistflyCommand", { link = "NightflyTanMode" })
    highlight(0, "MistflyReplace", { link = "NightflyWatermelonMode" })

    -- Coc plugin
    highlight(0, "CocUnusedHighlight", { link = "NightflyAshBlue" })
    highlight(0, "CocInlayHint", { link = "LspInlayHint" })

    -------------------------------------------------------------------------
    -- Neovim plugin styling
    -------------------------------------------------------------------------

    -- NvimTree plugin
    highlight(0, "NvimTreeFolderIcon", { link = "NightflyGreyBlue" })
    highlight(0, "NvimTreeFolderName", { link = "NightflyBlue" })
    highlight(0, "NvimTreeIndentMarker", { link = "NightflyCelloBlue" })
    highlight(0, "NvimTreeOpenedFolderName", { link = "NightflyBlue" })
    highlight(0, "NvimTreeRootFolder", { link = "NightflyPurple" })
    highlight(0, "NvimTreeSpecialFile", { link = "NightflyTan" })
    highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
    highlight(0, "NvimTreeCursorLine", { bg = M.palette.deep_blue })
    highlight(0, "NvimTreeExecFile", { fg = M.palette.green })
    highlight(0, "NvimTreeImageFile", { fg = M.palette.violet })
    if g.nightflyTransparent ~= true and g.nightflyNormalFloat ~= true then
        highlight(0, "NvimTreeNormalFloat", { bg = M.palette.bg, fg = M.palette.cadet_blue })
    end
    highlight(0, "NvimTreeOpenedFile", { fg = M.palette.yellow })
    highlight(0, "NvimTreeSymlink", { fg = M.palette.turquoise })

    -- Neo-tree plugin
    highlight(0, "NeoTreeCursorLine", { bg = M.palette.deep_blue })
    highlight(0, "NeoTreeDimText", { link = "NightflyPickleBlue" })
    highlight(0, "NeoTreeDirectoryIcon", { link = "NightflyGreyBlue" })
    highlight(0, "NeoTreeDotfile", { link = "NightflyGreyBlue" })
    highlight(0, "NeoTreeFloatTitle", { bg = M.palette.slate_blue, fg = M.palette.white })
    highlight(0, "NeoTreeFilterTerm", { link = "NightflyBlue" })
    highlight(0, "NeoTreeGitAdded", { link = "NightflyGreen" })
    highlight(0, "NeoTreeGitConflict", { link = "NightflyWatermelon" })
    highlight(0, "NeoTreeGitModified", { link = "NightflyTurquoise" })
    highlight(0, "NeoTreeGitUntracked", { link = "NightflyOrchid" })
    highlight(0, "NeoTreeIndentMarker", { link = "NightflyCelloBlue" })
    highlight(0, "NeoTreeMessage", { link = "NightflyCadetBlue" })
    highlight(0, "NeoTreeModified", { link = "NightflyTan" })
    highlight(0, "NeoTreeRootName", { link = "NightflyPurple" })
    highlight(0, "NeoTreeTitleBar", { bg = M.palette.slate_blue, fg = M.palette.white })

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
    highlight(0, "TelescopeSelection", { bg = M.palette.regal_blue, fg = M.palette.white_blue })

    -- gitsigns.nvim plugin
    --   sign column
    highlight(0, "GitSignsAdd", { link = "NightflyEmerald" })
    highlight(0, "GitSignsChange", { link = "NightflyMalibu" })
    highlight(0, "GitSignsChangeDelete", { link = "NightflyOrange" })
    highlight(0, "GitSignsDelete", { link = "NightflyRed" })
    highlight(0, "GitSignsUntracked", { link = "NightflySteelBlue" })
    --   line highlights
    highlight(0, "GitSignsAddLn", { bg = M.palette.deep_blue })
    highlight(0, "GitSignsChangeLn", { bg = M.palette.dark_blue })
    --   word diff
    highlight(0, "GitSignsAddLnInline", { bg = M.palette.pickle_blue })
    highlight(0, "GitSignsChangeLnInline", { bg = M.palette.pickle_blue })
    --   word diff in preview
    highlight(0, "GitSignsAddInline", { bg = M.palette.green, fg = M.palette.black })
    highlight(0, "GitSignsChangeInline", { bg = M.palette.yellow, fg = M.palette.black })
    highlight(0, "GitSignsDeleteInline", { bg = M.palette.red, fg = M.palette.black })
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

    -- Barbar plugin
    highlight(0, "BufferCurrent", { link = "NightflyWhiteLineActive" })
    highlight(0, "BufferCurrentIndex", { link = "NightflyWhiteLineActive" })
    highlight(0, "BufferCurrentMod", { link = "NightflyTanLineActive" })
    highlight(0, "BufferCurrentSign", { link = "NightflyBlueLineActive" })
    highlight(0, "BufferCurrentERROR", { link = "NightflyRedLineActive" })
    highlight(0, "BufferCurrentWARN", { link = "NightflyYellowLineActive" })
    highlight(0, "BufferCurrentINFO", { link = "NightflyBlueLineActive" })
    highlight(0, "BufferCurrentHINT", { link = "NightflyTurquoiseLineActive" })
    highlight(0, "BufferTabpages", { bg = M.palette.slate_blue, fg = M.palette.blue })
    highlight(0, "BufferVisible", { link = "NightflyGreyBlueLine" })
    highlight(0, "BufferVisibleIndex", { link = "NightflyGreyBlueLine" })
    highlight(0, "BufferVisibleMod", { link = "NightflyTanLine" })
    highlight(0, "BufferVisibleSign", { link = "NightflyGreyBlueLine" })
    highlight(0, "BufferVisibleERROR", { bg = M.palette.dark_blue, fg = M.palette.red })
    highlight(0, "BufferVisibleWARN", { bg = M.palette.dark_blue, fg = M.palette.yellow })
    highlight(0, "BufferVisibleINFO", { bg = M.palette.dark_blue, fg = M.palette.blue })
    highlight(0, "BufferVisibleHINT", { bg = M.palette.dark_blue, fg = M.palette.turquoise })
    highlight(0, "BufferInactive", { bg = M.palette.slate_blue, fg = M.palette.grey_blue })
    highlight(0, "BufferInactiveMod", { bg = M.palette.slate_blue, fg = M.palette.tan })
    highlight(0, "BufferInactiveSign", { bg = M.palette.slate_blue, fg = M.palette.cadet_blue })
    highlight(0, "BufferInactiveERROR", { bg = M.palette.slate_blue, fg = M.palette.red })
    highlight(0, "BufferInactiveWARN", { bg = M.palette.slate_blue, fg = M.palette.yellow })
    highlight(0, "BufferInactiveINFO", { bg = M.palette.slate_blue, fg = M.palette.blue })
    highlight(0, "BufferInactiveHINT", { bg = M.palette.slate_blue, fg = M.palette.turquoise })
    highlight(0, "BufferAlternate", { link = "BufferCurrent" })
    highlight(0, "BufferAlternateIndex", { link = "BufferCurrentIndex" })
    highlight(0, "BufferAlternateMod", { link = "BufferCurrentMod" })
    highlight(0, "BufferAlternateSign", { link = "BufferCurrentSign" })
    highlight(0, "BufferAlternateERROR", { link = "BufferCurrentERROR" })
    highlight(0, "BufferAlternateWARN", { link = "BufferCurrentWARN" })
    highlight(0, "BufferAlternateINFO", { link = "BufferCurrentINFO" })
    highlight(0, "BufferAlternateHINT", { link = "BufferCurrentHINT" })

    -- Bufferline plugin
    highlight(0, "BufferLineTabSelected", { fg = M.palette.blue })
    highlight(0, "BufferLineIndicatorSelected", { fg = M.palette.blue })

    -- nvim-cmp plugin
    highlight(0, "CmpItemAbbrMatch", { link = "NightflyTan" })
    highlight(0, "CmpItemAbbrMatchFuzzy", { link = "NightflyOrange" })
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
    highlight(0, "CmpItemMenu", { link = "NightflyCadetBlue" })

    -- Indent Blankline plugin v3 & later
    highlight(0, "IblIndent", { fg = M.palette.deep_blue, nocombine = true })
    highlight(0, "IblScope", { fg = M.palette.violet, nocombine = true })
    highlight(0, "IblWhitespace", { fg = M.palette.deep_blue, nocombine = true })
    -- Indent Blankline plugin v2 & earlier
    highlight(0, "IndentBlanklineChar", { link = "IblIndent" })
    highlight(0, "IndentBlanklineSpaceChar", { link = "IblWhitespace" })
    highlight(0, "IndentBlanklineSpaceCharBlankline", { link = "IblWhitespace" })

    -- Mini.nvim plugin
    highlight(0, "MiniCompletionActiveParameter", { link = "NightflyVisual" })
    highlight(0, "MiniCursorword", { link = "NightflyUnderline" })
    highlight(0, "MiniCursorwordCurrent", { link = "NightflyUnderline" })
    highlight(0, "MiniIndentscopePrefix", { link = "NightflyNoCombine" })
    highlight(0, "MiniIndentscopeSymbol", { link = "NightflyWhite" })
    highlight(0, "MiniJump", { link = "SpellRare" })
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
    highlight(0, "MiniTablineVisible", { link = "NightflyGreyBlueLine" })
    highlight(0, "MiniTestEmphasis", { link = "NightflyUnderline" })
    highlight(0, "MiniTestFail", { link = "NightflyRed" })
    highlight(0, "MiniTestPass", { link = "NightflyGreen" })
    highlight(0, "MiniTrailspace", { link = "NightflyWatermelonMode" })
    highlight(0, "MiniJump2dSpot", { fg = M.palette.yellow, underline = true, nocombine = true })
    highlight(0, "MiniStatuslineFilename", { bg = M.palette.slate_blue, fg = M.palette.white })
    highlight(0, "MiniStatuslineInactive", { bg = M.palette.slate_blue, fg = M.palette.cadet_blue })
    highlight(0, "MiniTablineHidden", { bg = M.palette.slate_blue, fg = M.palette.grey_blue })
    highlight(0, "MiniTablineModifiedHidden", { bg = M.palette.slate_blue, fg = M.palette.tan })

    -- Dashboard plugin
    highlight(0, "DashboardCenter", { link = "NightflyViolet" })
    highlight(0, "DashboardFooter", { link = "NightflyOrange" })
    highlight(0, "DashboardHeader", { link = "NightflyBlue" })
    highlight(0, "DashboardShortCut", { link = "NightflyTurquoise" })

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

    -- lazy.nvim plugin
    highlight(0, "LazyCommit", { link = "NightflyEmerald" })
    highlight(0, "LazyCommitType", { link = "NightflyViolet" })
    highlight(0, "LazyDimmed", { fg = M.palette.grey_blue })
    highlight(0, "LazyH1", { link = "NightflyBlueMode" })
    highlight(0, "LazyProgressDone", { link = "NightflyBlue" })
    highlight(0, "LazyProgressTodo", { link = "NightflyRegalBlue" })
    highlight(0, "LazyReasonCmd", { link = "NightflyGreen" })
    highlight(0, "LazyReasonPlugin", { link = "NightflyOrchid" })
    highlight(0, "LazyReasonRuntime", { link = "NightflyViolet" })
    highlight(0, "LazySpecial", { link = "NightflyBlue" })
    highlight(0, "LazyButton", { bg = M.palette.deep_blue, fg = M.palette.white })
    highlight(0, "LazyButtonActive", { bg = M.palette.bay_blue, fg = M.palette.white_blue })
    if g.nightflyNormalFloat ~= true then
        highlight(0, "LazyNormal", { bg = M.palette.black_blue, fg = M.palette.white })
    end

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
    highlight(0, "MasonMutedBlock", { bg = M.palette.deep_blue, fg = M.palette.white })
    highlight(0, "MasonMutedBlockBold", { bg = M.palette.deep_blue, fg = M.palette.white_blue })

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

    -- Noice plugin
    highlight(0, "NoiceCmdlinePopup", { link = "NightflyCadetBlue" })
    highlight(0, "NoiceCmdlinePopupBorder", { link = "NightflyPickleBlue" })
    highlight(0, "NoiceCmdlinePopupBorderSearch", { link = "NightflyPickleBlue" })
    highlight(0, "NoiceCmdlinePrompt", { link = "NightflyBlue" })
    highlight(0, "NoiceCompletionItemKindDefault", { link = "NightflyTurquoise" })
    highlight(0, "NoiceConfirmBorder", { link = "NightflyBlue" })
    highlight(0, "NoiceFormatTitle", { link = "NightflyWatermelon" })

    -- nvim-navic plugin
    highlight(0, "NavicText", { bg = M.palette.slate_blue, fg = M.palette.ash_blue })
    highlight(0, "NavicSeparator", { bg = M.palette.slate_blue, fg = M.palette.white })
    highlight(0, "NavicIconsOperator", { bg = M.palette.slate_blue, fg = M.palette.watermelon })
    highlight(0, "NavicIconsBoolean", { link = "NavicIconsOperator" })
    highlight(0, "NavicIconsClass", { bg = M.palette.slate_blue, fg = M.palette.emerald })
    highlight(0, "NavicIconsConstant", { bg = M.palette.slate_blue, fg = M.palette.orange })
    highlight(0, "NavicIconsConstructor", { bg = M.palette.slate_blue, fg = M.palette.blue })
    highlight(0, "NavicIconsEnum", { bg = M.palette.slate_blue, fg = M.palette.violet })
    highlight(0, "NavicIconsEnumMember", { bg = M.palette.slate_blue, fg = M.palette.turquoise })
    highlight(0, "NavicIconsEvent", { link = "NavicIconsConstant" })
    highlight(0, "NavicIconsField", { link = "NavicIconsEnumMember" })
    highlight(0, "NavicIconsFile", { bg = M.palette.slate_blue, fg = M.palette.blue })
    highlight(0, "NavicIconsFunction", { link = "NavicIconsConstructor" })
    highlight(0, "NavicIconsInterface", { link = "NavicIconsEnum" })
    highlight(0, "NavicIconsKey", { link = "NavicIconsEnumMember" })
    highlight(0, "NavicIconsMethod", { link = "NavicIconsConstructor" })
    highlight(0, "NavicIconsModule", { link = "NavicIconsEnumMember" })
    highlight(0, "NavicIconsNamespace", { link = "NavicIconsEnumMember" })
    highlight(0, "NavicIconsNull", { bg = M.palette.slate_blue, fg = M.palette.green })
    highlight(0, "NavicIconsNumber", { link = "NavicIconsConstant" })
    highlight(0, "NavicIconsObject", { link = "NavicIconsEnumMember" })
    highlight(0, "NavicIconsPackage", { link = "NavicIconsEnumMember" })
    highlight(0, "NavicIconsProperty", { link = "NavicIconsEnumMember" })
    highlight(0, "NavicIconsString", { bg = M.palette.slate_blue, fg = M.palette.tan })
    highlight(0, "NavicIconsStruct", { link = "NavicIconsClass" })
    highlight(0, "NavicIconsTypeParameter", { link = "NavicIconsEnumMember" })
    highlight(0, "NavicIconsVariable", { link = "NavicIconsEnumMember" })

    -- Rainbow Delimiters plugin
    highlight(0, "RainbowDelimiterRed", { link = "NightflyRed" })
    highlight(0, "RainbowDelimiterYellow", { link = "NightflyYellow" })
    highlight(0, "RainbowDelimiterBlue", { link = "NightflyBlue" })
    highlight(0, "RainbowDelimiterOrange", { link = "NightflyOrange" })
    highlight(0, "RainbowDelimiterGreen", { link = "NightflyGreen" })
    highlight(0, "RainbowDelimiterViolet", { link = "NightflyViolet" })
    highlight(0, "RainbowDelimiterCyan", { link = "NightflyTurquoise" })

    -- Neogit plugin
    highlight(0, "NeogitBranch", { link = "NightflyBlue" })
    highlight(0, "NeogitDiffAddHighlight", { link = "NightflyEmeraldLine" })
    highlight(0, "NeogitDiffContextHighlight", { bg = M.palette.dark_blue })
    highlight(0, "NeogitDiffDeleteHighlight", { link = "NightflyWatermelonLine" })
    highlight(0, "NeogitHunkHeader", { link = "Pmenu" })
    highlight(0, "NeogitHunkHeaderHighlight", { link = "NightflyBlueLineActive" })
    highlight(0, "NeogitRemote", { link = "NightflyPurple" })

    -- nvim-window-picker plugin
    highlight(0, "WindowPickerStatusLine", { link = "WinBar" })
    highlight(0, "WindowPickerStatusLineNC", { link = "WinBar" })
    highlight(0, "WindowPickerWinBar", { link = "WinBar" })
    highlight(0, "WindowPickerWinBarNC", { link = "WinBar" })

    -- nvim-dap-ui
    highlight(0, "DapUIBreakpointsCurrentLine", { bg = M.palette.dark_blue, fg = M.palette.green })
    highlight(0, "DapUIBreakpointsDisabledLine", { link = "Comment" })
    highlight(0, "DapUIBreakpointsInfo", { link = "NightflyMalibu" })
    highlight(0, "DapUIBreakpointsPath", { link = "NightflyTurquoise" })
    highlight(0, "DapUIDecoration", { link = "NightflyBlue" })
    highlight(0, "DapUIFloatBorder", { link = "FloatBorder" })
    highlight(0, "DapUILineNumber", { link = "Number" })
    highlight(0, "DapUIModifiedValue", { fg = M.palette.white, underline = true })
    highlight(0, "DapUIPlayPause", { bg = M.palette.deep_blue, fg = M.palette.green })
    highlight(0, "DapUIRestart", { link = "DapUIPlayPause" })
    highlight(0, "DapUIScope", { link = "NightflyMalibu" })
    highlight(0, "DapUISource", { link = "NightflyViolet" })
    highlight(0, "DapUIStepBack", { bg = M.palette.deep_blue, fg = M.palette.turquoise })
    highlight(0, "DapUIStepInto", { link = "DapUIStepBack" })
    highlight(0, "DapUIStepOut", { link = "DapUIStepBack" })
    highlight(0, "DapUIStepOver", { link = "DapUIStepBack" })
    highlight(0, "DapUIStop", { bg = M.palette.deep_blue, fg = M.palette.red })
    highlight(0, "DapUIStoppedThread", { link = "NightflyTurquoise" })
    highlight(0, "DapUIThread", { link = "NightflyGreen" })
    highlight(0, "DapUIType", { link = "Type" })
    highlight(0, "DapUIUnavailable", { bg = M.palette.deep_blue, fg = M.palette.steel_blue })
    highlight(0, "DapUIWatchesEmpty", { link = "NightflyRed" })
    highlight(0, "DapUIWatchesError", { link = "NightflyRed" })
    highlight(0, "DapUIWatchesValue", { link = "NightflyGreen" })
    highlight(0, "DapUIWinSelect", { link = "NightflyBlue" })

    -- arrow.nvim
    highlight(0, "ArrowCurrentFile", { link = "NightflyEmerald" })

    -- NvCheatsheet.nvim
    highlight(0, "NvChSection", { link = "Pmenu" })
    highlight(0, "NvChAsciiHeader", { link = "Directory" })
    highlight(0, "NvCheatsheetWhite", { bg = M.palette.white, fg = M.palette.dark_blue })
    highlight(0, "NvCheatsheetGray", { bg = M.palette.orchid, fg = M.palette.dark_blue })
    highlight(0, "NvCheatsheetBlue", { link = "NightflyBlueMode" })
    highlight(0, "NvCheatsheetCyan", { link = "NightflyTurquoiseMode" })
    highlight(0, "NvCheatsheetRed", { link = "NightflyWatermelonMode" })
    highlight(0, "NvCheatsheetGreen", { link = "NightflyEmeraldMode" })
    highlight(0, "NvCheatsheetYellow", { link = "NightflyTanMode" })
    highlight(0, "NvCheatsheetOrange", { bg = M.palette.orange, fg = M.palette.dark_blue })
    highlight(0, "NvCheatsheetPurple", { link = "NightflyPurpleMode" })
    highlight(0, "NvCheatsheetMagenta", { bg = M.palette.violet, fg = M.palette.dark_blue })
    
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
end

return M
