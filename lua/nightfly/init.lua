local g = vim.g
local highlight = vim.api.nvim_set_hl

-- Background and foreground
local black = "#011627"
local white = "#c3ccdc"
local bg = black
if g.nightflyTransparent then
  bg = "NONE"
end
-- Variations of blue-grey
local black_blue = "#081e2f"
local dark_blue = "#092236"
local deep_blue = "#0e293f"
local slate_blue = "#2c3043"
local pickle_blue = "#38507a"
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
local violet = "#c792ea"
local purple = "#ae81ff"
local indigo = "#5e97ec"
local blue = "#82aaff"
local malibu = "#87bcff"
local turquoise = "#7fdbca"
local emerald = "#21c7a8"
local green = "#a1cd5e"
-- Extra colors
local cyan_blue = "#296596"
local bay_blue = "#24567F"

local M = {}

M.core = function()
  highlight(0, "Whitespace", { fg = regal_blue })
  highlight(0, "TermCursor", { bg = cadet_blue, fg = black })
  if g.nightflyNormalFloat then
    highlight(0, "NormalFloat", { bg = bg, fg = cadet_blue })
  else
    highlight(0, "NormalFloat", { bg = dark_blue, fg = white })
  end
  highlight(0, "FloatBorder", { bg = bg, fg = slate_blue })
  highlight(0, "WinBar", { bg = deep_blue, fg = white })
  highlight(0, "WinBarNC", { bg = deep_blue, fg = cadet_blue })
  highlight(0, "WinSeparator", { link = "VertSplit" })

  -- Neovim check-health
  highlight(0, "healthSuccess", { link = "DiffAdd" })
  highlight(0, "healthHeadingChar", { link = "NightflyBlue" })
  highlight(0, "helpHeader", { link = "NightflyTurquoise" })

  -- Neovim Treesitter
  highlight(0, "@annotation", { link = "NightflyViolet" })
  highlight(0, "@attribute", { link = "NightflyBlue" })
  highlight(0, "@constant", { link = "NightflyTurquoise" })
  highlight(0, "@constant.builtin", { link = "NightflyGreen" })
  highlight(0, "@constant.macro", { link = "NightflyViolet" })
  highlight(0, "@constructor", { link = "NightflyEmerald" })
  highlight(0, "@danger", { link = "Todo" })
  highlight(0, "@error", { link = "NightflyRedAlert" })
  highlight(0, "@exception", { link = "NightflyViolet" })
  highlight(0, "@function.builtin", { link = "NightflyBlue" })
  highlight(0, "@function.call", { link = "NightflyBlue" })
  highlight(0, "@function.macro", { link = "NightflyBlue" })
  highlight(0, "@include", { link = "NightflyWatermelon" })
  highlight(0, "@keyword.operator", { link = "NightflyViolet" })
  highlight(0, "@namespace", { link = "NightflyTurquoise" })
  highlight(0, "@none", {})
  highlight(0, "@parameter", { link = "NightflyOrchid" })
  highlight(0, "@property", { link = "NightflyTurquoise" })
  highlight(0, "@punctuation.special", { link = "NightflyWatermelon" })
  highlight(0, "@string.regex", { link = "NightflyTurquoise" })
  highlight(0, "@symbol", { link = "NightflyPurple" })
  highlight(0, "@tag", { link = "NightflyBlue" })
  highlight(0, "@tag.attribute", { link = "NightflyTurquoise" })
  highlight(0, "@tag.delimiter", { link = "NightflyGreen" })
  highlight(0, "@text.danger", { link = "NightflyRedAlert" })
  highlight(0, "@text.diff.add", { link = "DiffAdd" })
  highlight(0, "@text.diff.delete", { link = "DiffDelete" })
  highlight(0, "@text.emphasis", { fg = orchid, italic = true })
  highlight(0, "@text.environment", { link = "NightflyWatermelon" })
  highlight(0, "@text.environment.name", { link = "NightflyEmerald" })
  highlight(0, "@text.literal", { link = "String" })
  highlight(0, "@text.math", { link = "NightflyWatermelon" })
  highlight(0, "@text.note", { link = "NightflyGreyBlue" })
  highlight(0, "@text.reference", { link = "NightflyGreen" })
  highlight(0, "@text.strike", { strikethrough = true })
  highlight(0, "@text.strong", { link = "NightflyOrchid" })
  highlight(0, "@text.title", { link = "NightflyBlue" })
  highlight(0, "@text.todo", { link = "Todo" })
  highlight(0, "@text.underline", { underline = true })
  highlight(0, "@text.uri", { link = "NightflyPurple" })
  highlight(0, "@text.warning", { link = "NightflyYellowAlert" })
  highlight(0, "@type.qualifier", { link = "NightflyViolet" })
  highlight(0, "@variable", { link = "NightflyWhite" })
  highlight(0, "@variable.builtin", { link = "NightflyGreen" })
  -- Language specific overrides.
  highlight(0, "@punctuation.delimiter.astro", { link = "NightflyWatermelon" })
  highlight(0, "@text.title.astro", { link = "NightflyViolet" })
  highlight(0, "@parameter.bash", { link = "NightflyTurquoise" })
  highlight(0, "@punctuation.delimiter.css", { link = "NightflyWatermelon" })
  highlight(0, "@keyword.gitcommit", { link = "NightflyBlue" })
  highlight(0, "@text.reference.gitcommit", { link = "NightflyBlue" })
  highlight(0, "@text.title.gitcommit", { link = "NightflyViolet" })
  highlight(0, "@text.uri.gitcommit", { link = "NightflyEmerald" })
  highlight(0, "@text.title.help", { link = "NightflyMalibu" })
  highlight(0, "@text.title.html", { link = "NightflyViolet" })
  highlight(0, "@punctuation.delimiter.scss", { link = "NightflyWatermelon" })
  highlight(0, "@variable.scss", { link = "NightflyTurquoise" })
  highlight(0, "@text.title.svelte", { link = "NightflyViolet" })
  highlight(0, "@variable.vim", { link = "NightflyTurquoise" })
  highlight(0, "@variable.builtin.vim", { link = "NightflyEmerald" })
  highlight(0, "@text.title.vue", { link = "NightflyViolet" })
  highlight(0, "@field.yaml", { link = "NightflyBlue" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "NightflyWatermelon" })

  -- Neovim LSP semantic tokens.
  highlight(0, "@lsp.mod.deprecated", { link = "@constant" })
  highlight(0, "@lsp.mod.readonly", { link = "@constant" })
  highlight(0, "@lsp.mod.typeHint", { link = "@type" })
  highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
  highlight(0, "@lsp.type.class", { link = "@type" })
  highlight(0, "@lsp.type.enum", { link = "@type" })
  highlight(0, "@lsp.type.enumMember", { link = "@property" })
  highlight(0, "@lsp.type.interface", { link = "@type" })
  highlight(0, "@lsp.type.keyword", { link = "@keyword" })
  highlight(0, "@lsp.type.magicFunction", { link = "@function.builtin" })
  highlight(0, "@lsp.type.namespace", { link = "@namespace" })
  highlight(0, "@lsp.type.parameter", { link = "@parameter" })
  highlight(0, "@lsp.type.property", { link = "@property" })
  highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
  highlight(0, "@lsp.type.struct", { link = "@type" })
  highlight(0, "@lsp.type.variable", { link = "@variable" })
  highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
  highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
  highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  highlight(0, "@lsp.typemod.variable.global", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.readonly", { link = "@constant" })
  highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })

  -- Neovim Diagnostic
  highlight(0, "DiagnosticError", { link = "NightflyRed" })
  highlight(0, "DiagnosticWarn", { link = "NightflyYellow" })
  highlight(0, "DiagnosticInfo", { link = "NightflyMalibu" })
  highlight(0, "DiagnosticHint", { link = "NightflyWhite" })
  if g.nightflyUndercurls then
    highlight(0, "DiagnosticUnderlineError", { link = "NightflyDiagnosticUndercurlError" })
    highlight(0, "DiagnosticUnderlineWarn", { link = "NightflyDiagnosticUndercurlWarn" })
    highlight(0, "DiagnosticUnderlineInfo", { link = "NightflyDiagnosticUndercurlInfo" })
    highlight(0, "DiagnosticUnderlineHint", { link = "NightflyDiagnosticUndercurlHint" })
  else
    highlight(0, "DiagnosticUnderlineError", { link = "NightflyDiagnosticUnderlineError" })
    highlight(0, "DiagnosticUnderlineWarn", { link = "NightflyDiagnosticUnderlineWarn" })
    highlight(0, "DiagnosticUnderlineInfo", { link = "NightflyDiagnosticUnderlineInfo" })
    highlight(0, "DiagnosticUnderlineHint", { link = "NightflyDiagnosticUnderlineHint" })
  end
  if g.nightflyVirtualTextColor then
    highlight(0, "DiagnosticVirtualTextError", { link = "NightflyDiagnosticVirtualTextError" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "NightflyDiagnosticVirtualTextWarn" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "NightflyDiagnosticVirtualTextInfo" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "NightflyDiagnosticVirtualTextHint" })
  else
    highlight(0, "DiagnosticVirtualTextError", { link = "NightflySteelBlue" })
    highlight(0, "DiagnosticVirtualTextWarn", { link = "NightflySteelBlue" })
    highlight(0, "DiagnosticVirtualTextInfo", { link = "NightflySteelBlue" })
    highlight(0, "DiagnosticVirtualTextHint", { link = "NightflySteelBlue" })
  end
  highlight(0, "DiagnosticSignError", { link = "NightflyRedAlert" })
  highlight(0, "DiagnosticSignWarn", { link = "NightflyYellowAlert" })
  highlight(0, "DiagnosticSignInfo", { link = "NightflyMalibuAlert" })
  highlight(0, "DiagnosticSignHint", { link = "NightflyWhiteAlert" })
  highlight(0, "DiagnosticFloatingError", { link = "NightflyRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "NightflyYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "NightflyMalibu" })
  highlight(0, "DiagnosticFloatingHint", { link = "NightflyWhite" })

  -- Neovim LSP
  highlight(0, "LspCodeLens", { link = "NightflySteelBlue" })
  highlight(0, "LspCodeLensSeparator", { link = "NightflySteelBlue" })
  highlight(0, "LspInfoBorder", { link = "FloatBorder" })
  highlight(0, "LspReferenceText", { link = "NightflyVisual" })
  highlight(0, "LspReferenceRead", { link = "NightflyVisual" })
  highlight(0, "LspReferenceWrite", { link = "NightflyVisual" })
  highlight(0, "LspSignatureActiveParameter", { bg = slate_blue })
end

M.plugins = function()
  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "NightflyBlue" })
  highlight(0, "NvimTreeFolderName", { link = "NightflyBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "NightflyPickleBlue" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "NightflyBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "NightflyPurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "NightflyYellow" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeCursorLine", { bg = deep_blue })
  highlight(0, "NvimTreeExecFile", { fg = green })
  highlight(0, "NvimTreeImageFile", { fg = violet })
  highlight(0, "NvimTreeNormal", { bg = black_blue, fg = white })
  highlight(0, "NvimTreeOpenedFile", { fg = yellow })
  highlight(0, "NvimTreeSymlink", { fg = turquoise })

  -- Neo-tree plugin
  highlight(0, "NeoTreeDimText", { link = "NightflyPickleBlue" })
  highlight(0, "NeoTreeDotfile", { link = "NightflySlateBlue" })
  highlight(0, "NeoTreeGitAdded", { link = "NightflyGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "NightflyWatermelon" })
  highlight(0, "NeoTreeGitModified", { link = "NightflyYellow" })
  highlight(0, "NeoTreeGitUntracked", { link = "NightflySteelBlue" })
  highlight(0, "NeoTreeMessage", { link = "NightflyCadetBlue" })
  highlight(0, "NeoTreeModified", { link = "NightflyYellow" })
  highlight(0, "NeoTreeRootName", { link = "NightflyPurple" })
  highlight(0, "NeoTreeCursorLine", { bg = deep_blue })
  highlight(0, "NeoTreeNormal", { bg = black_blue, fg = white })

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

  -- gitsigns.nvim plugin
  --   sign column
  highlight(0, "GitSignsAdd", { link = "NightflyEmeraldAlert" })
  highlight(0, "GitSignsChange", { link = "NightflyMalibuAlert" })
  highlight(0, "GitSignsChangeDelete", { link = "NightflyOrangeAlert" })
  highlight(0, "GitSignsDelete", { link = "NightflyRedAlert" })
  highlight(0, "GitSignsUntracked", { link = "NightflySteelBlue" })
  --   line highlights
  highlight(0, "GitSignsAddLn", { bg = deep_blue })
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

  -- Barbar plugin
  highlight(0, "BufferCurrent", { link = "NightflyWhiteLineActive" })
  highlight(0, "BufferCurrentIndex", { link = "NightflyWhiteLineActive" })
  highlight(0, "BufferCurrentMod", { link = "NightflyTanLineActive" })
  highlight(0, "BufferCurrentSign", { link = "NightflyBlueLineActive" })
  highlight(0, "BufferCurrentERROR", { link = "NightflyRedLineActive" })
  highlight(0, "BufferCurrentWARN", { link = "NightflyYellowLineActive" })
  highlight(0, "BufferCurrentINFO", { link = "NightflyBlueLineActive" })
  highlight(0, "BufferCurrentHINT", { link = "NightflyWhiteLineActive" })
  highlight(0, "BufferTabpages", { bg = slate_blue, fg = blue })
  highlight(0, "BufferVisible", { link = "NightflyGreyBlueLine" })
  highlight(0, "BufferVisibleIndex", { link = "NightflyGreyBlueLine" })
  highlight(0, "BufferVisibleMod", { link = "NightflyTanLine" })
  highlight(0, "BufferVisibleSign", { link = "NightflyGreyBlueLine" })
  highlight(0, "BufferVisibleERROR", { bg = dark_blue, fg = red })
  highlight(0, "BufferVisibleWARN", { bg = dark_blue, fg = yellow })
  highlight(0, "BufferVisibleINFO", { bg = dark_blue, fg = blue })
  highlight(0, "BufferVisibleHINT", { bg = dark_blue, fg = white })
  highlight(0, "BufferInactive", { bg = slate_blue, fg = grey_blue })
  highlight(0, "BufferInactiveMod", { bg = slate_blue, fg = tan })
  highlight(0, "BufferInactiveSign", { bg = slate_blue, fg = cadet_blue })
  highlight(0, "BufferInactiveERROR", { bg = slate_blue, fg = red })
  highlight(0, "BufferInactiveWARN", { bg = slate_blue, fg = yellow })
  highlight(0, "BufferInactiveINFO", { bg = slate_blue, fg = blue })
  highlight(0, "BufferInactiveHINT", { bg = slate_blue, fg = white })
  highlight(0, "BufferAlternate", { link = "BufferCurrent" })
  highlight(0, "BufferAlternateIndex", { link = "BufferCurrentIndex" })
  highlight(0, "BufferAlternateMod", { link = "BufferCurrentMod" })
  highlight(0, "BufferAlternateSign", { link = "BufferCurrentSign" })
  highlight(0, "BufferAlternateERROR", { link = "BufferCurrentERROR" })
  highlight(0, "BufferAlternateWARN", { link = "BufferCurrentWARN" })
  highlight(0, "BufferAlternateINFO", { link = "BufferCurrentINFO" })
  highlight(0, "BufferAlternateHINT", { link = "BufferCurrentHINT" })

  -- Bufferline plugin
  highlight(0, "BufferLineTabSelected", { fg = blue })
  highlight(0, "BufferLineIndicatorSelected", { fg = blue })

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

  -- Indent Blankline plugin
  highlight(0, "IndentBlanklineChar", { fg = deep_blue, nocombine = true })
  highlight(0, "IndentBlanklineSpaceChar", { fg = deep_blue, nocombine = true })
  highlight(0, "IndentBlanklineSpaceCharBlankline", { fg = deep_blue, nocombine = true })

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
  highlight(0, "MiniJump2dSpot", { fg = yellow, underline = true, nocombine = true })
  highlight(0, "MiniStatuslineFilename", { bg = slate_blue, fg = white })
  highlight(0, "MiniStatuslineInactive", { bg = slate_blue, fg = cadet_blue })
  highlight(0, "MiniTablineHidden", { bg = slate_blue, fg = grey_blue })
  highlight(0, "MiniTablineModifiedHidden", { bg = slate_blue, fg = tan })

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
  highlight(0, "LazyH1", { link = "NightflyBlueMode" })
  highlight(0, "LazyProgressDone", { link = "NightflyBlue" })
  highlight(0, "LazyProgressTodo", { link = "NightflyRegalBlue" })
  highlight(0, "LazyReasonCmd", { link = "NightflyGreen" })
  highlight(0, "LazyReasonPlugin", { link = "NightflyOrchid" })
  highlight(0, "LazyReasonRuntime", { link = "NightflyViolet" })
  highlight(0, "LazySpecial", { link = "NightflyBlue" })
  highlight(0, "LazyButton", { bg = deep_blue, fg = white })
  highlight(0, "LazyButtonActive", { bg = bay_blue, fg = white_blue })
  if g.moonflyNormalFloat ~= true then
    highlight(0, "LazyNormal", { bg = black_blue, fg = white })
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
  highlight(0, "MasonMutedBlock", { bg = deep_blue, fg = white })
  highlight(0, "MasonMutedBlockBold", { bg = deep_blue, fg = white_blue })

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
  highlight(0, "FinderFileName", { link = "NightflyWhite" })
  highlight(0, "FinderIcon", { link = "NightflyTurquoise" })
  highlight(0, "FinderType", { link = "NightflyViolet" })
  highlight(0, "FinderSpinnerTitle", { link = "NightflyPurple" })
  highlight(0, "FinderSpinner", { link = "NightflyPurple" })
  highlight(0, "FinderVirtText", { link = "NightflyRed" })
  highlight(0, "RenameNormal", { link = "NightflyOrange" })
  highlight(0, "DiagnosticSource", { link = "NightflySteelBlue" })
  highlight(0, "DiagnosticPos", { link = "NightflyBlue" })
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
end

return M
