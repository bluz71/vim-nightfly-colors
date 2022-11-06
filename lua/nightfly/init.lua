local fn = vim.fn
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
local red = "#fc514e"
local watermelon = "#ff5874"
local violocal = "#c792ea"
local purple = "#ae81ff"
local indigo = "#5e97ec"
local blue = "#82aaff"
local turquoise = "#7fdbca"
local emerald = "#21c7a8"
local green = "#a1cd5e"
-- Extra colors
local cyan_blue = "#296596"

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

  -- Neovim Treesitter
  highlight(0, "@annotation", { link = "NightflyViolet" })
  highlight(0, "@attribute", { link = "NightflyBlue" })
  highlight(0, "@constant", { link = "NightflyTurquoise" })
  highlight(0, "@constant.builtin", { link = "NightflyGreen" })
  highlight(0, "@constant.macro", { link = "NightflyViolet" })
  highlight(0, "@constructor", { link = "NightflyEmerald" })
  highlight(0, "@danger", { link = "Todo" })
  highlight(0, "@function.builtin", { link = "NightflyBlue" })
  highlight(0, "@function.macro", { link = "NightflyBlue" })
  highlight(0, "@include", { link = "NightflyWatermelon" })
  highlight(0, "@keyword.operator", { link = "NightflyViolet" })
  highlight(0, "@namespace", { link = "NightflyTurquoise" })
  highlight(0, "@parameter", { link = "NightflyWhite" })
  highlight(0, "@punctuation.special", { link = "NightflyWatermelon" })
  highlight(0, "@symbol", { link = "NightflyPurple" })
  highlight(0, "@tag", { link = "NightflyBlue" })
  highlight(0, "@tag.delimiter", { link = "NightflyGreen" })
  highlight(0, "@variable.builtin", { link = "NightflyGreen" })
  -- Language specific overrides.
  highlight(0, "@parameter.bash", { link = "NightflyTurquoise" })
  highlight(0, "@punctuation.delimiter.css", { link = "NightflyWatermelon" })
  highlight(0, "@type.css", { link = "NightflyBlue" })
  highlight(0, "@punctuation.delimiter.scss", { link = "NightflyWatermelon" })
  highlight(0, "@type.scss", { link = "NightflyBlue" })
  highlight(0, "@variable.scss", { link = "NightflyTurquoise" })
  highlight(0, "@variable.vim", { link = "NightflyTurquoise" })
  highlight(0, "@variable.builtin.vim", { link = "NightflyEmerald" })
  highlight(0, "@field.yaml", { link = "NightflyBlue" })
  highlight(0, "@punctuation.delimiter.yaml", { link = "NightflyWatermelon" })

  -- Neovim Diagnostic
  highlight(0, "DiagnosticError", { link = "NightflyRed" })
  highlight(0, "DiagnosticWarn", { link = "NightflyYellow" })
  highlight(0, "DiagnosticInfo", { link = "NightflyBlue" })
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
  highlight(0, "DiagnosticVirtualTextError", { link = "NightflySteelBlue" })
  highlight(0, "DiagnosticVirtualTextWarn", { link = "NightflySteelBlue" })
  highlight(0, "DiagnosticVirtualTextInfo", { link = "NightflySteelBlue" })
  highlight(0, "DiagnosticVirtualTextHint", { link = "NightflySteelBlue" })
  highlight(0, "DiagnosticSignError", { link = "NightflyRedAlert" })
  highlight(0, "DiagnosticSignWarn", { link = "NightflyYellowAlert" })
  highlight(0, "DiagnosticSignInfo", { link = "NightflyBlueAlert" })
  highlight(0, "DiagnosticSignHint", { link = "NightflyWhiteAlert" })
  highlight(0, "DiagnosticFloatingError", { link = "NightflyRed" })
  highlight(0, "DiagnosticFloatingWarn", { link = "NightflyYellow" })
  highlight(0, "DiagnosticFloatingInfo", { link = "NightflyBlue" })
  highlight(0, "DiagnosticFloatingHint", { link = "NightflyWhite" })
  highlight(0, "LspSignatureActiveParameter", { link = "NightflyVisual" })
end

M.plugins = function()
  -- NvimTree plugin
  highlight(0, "NvimTreeFolderIcon", { link = "NightflyBlue" })
  highlight(0, "NvimTreeFolderName", { link = "NightflyBlue" })
  highlight(0, "NvimTreeIndentMarker", { link = "NightflySlateBlue" })
  highlight(0, "NvimTreeOpenedFolderName", { link = "NightflyBlue" })
  highlight(0, "NvimTreeRootFolder", { link = "NightflyPurple" })
  highlight(0, "NvimTreeSpecialFile", { link = "NightflyYellow" })
  highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
  highlight(0, "NvimTreeExecFile", { fg = green })
  highlight(0, "NvimTreeImageFile", { fg = violet })
  highlight(0, "NvimTreeOpenedFile", { fg = yellow })
  highlight(0, "NvimTreeSymlink", { fg = turquoise })

  -- Neo-tree plugin
  highlight(0, "NeoTreeDimText", { link = "NightflyDeepBlue" })
  highlight(0, "NeoTreeDotfile", { link = "NightflySlateBlue" })
  highlight(0, "NeoTreeGitAdded", { link = "NightflyGreen" })
  highlight(0, "NeoTreeGitConflict", { link = "NightflyWatermelon" })
  highlight(0, "NeoTreeGitModified", { link = "NightflyViolet" })
  highlight(0, "NeoTreeGitUntracked", { link = "NightflySteelBlue" })
  highlight(0, "NeoTreeMessage", { link = "NightflyCadetBlue" })
  highlight(0, "NeoTreeModified", { link = "NightflyYellow" })
  highlight(0, "NeoTreeRootName", { link = "NightflyPurple" })

  -- Telescope plugin
  highlight(0, "TelescopeBorder", { link = "NightflySlateBlue" })
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
  highlight(0, "GitSignsAdd", { link = "NightflyEmeraldAlert" })
  highlight(0, "GitSignsAddLn", { link = "NightflyGreen" })
  highlight(0, "GitSignsAddPreview", { link = "NightflyEmeraldLine" })
  highlight(0, "GitSignsChange", { link = "NightflyYellowAlert" })
  highlight(0, "GitSignsChangeDelete", { link = "NightflyOrangeAlert" })
  highlight(0, "GitSignsChangeLn", { link = "NightflyYellow" })
  highlight(0, "GitSignsChangeNr", { link = "NightflyYellowAlert" })
  highlight(0, "GitSignsDelete", { link = "NightflyRedAlert" })
  highlight(0, "GitSignsDeleteLn", { link = "NightflyRed" })
  highlight(0, "GitSignsDeletePreview", { link = "NightflyWatermelonLine" })
  highlight(0, "GitSignsDeleteVirtLn", { link = "NightflyWatermelonLine" })
  highlight(0, "GitSignsAddInline", { bg = green, fg = black })
  highlight(0, "GitSignsChangeInline", { bg = yellow, fg = black })
  highlight(0, "GitSignsDeleteInline", { bg = red, fg = black })

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
  highlight(0, "BufferTabpages", { link = "NightflyBlueLine" })
  highlight(0, "BufferVisible", { link = "NightflyGreyBlueLine" })
  highlight(0, "BufferVisibleIndex", { link = "NightflyGreyBlueLine" })
  highlight(0, "BufferVisibleMod", { link = "NightflyTanLine" })
  highlight(0, "BufferVisibleSign", { link = "NightflyGreyBlueLine" })
  highlight(0, "BufferCurrentSign", { bg = regal_blue, fg = blue })
  highlight(0, "BufferInactive", { bg = slate_blue, fg = grey_blue })
  highlight(0, "BufferInactiveMod", { bg = slate_blue, fg = tan })
  highlight(0, "BufferInactiveSign", { bg = slate_blue, fg = cadet_blue })

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

  -- nvim-notify
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
end

return M
