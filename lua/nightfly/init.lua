local fn = vim.fn
local g = vim.g
local highlight = vim.api.nvim_set_hl

-- Background and foreground
local black = "#011627"
local white = "#c3ccdc"
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
    highlight(0, "NormalFloat", { bg = black, fg = cadet_blue })
  else
    highlight(0, "NormalFloat", { bg = dark_blue, fg = white })
  end
  highlight(0, "FloatBorder", { bg = black, fg = slate_blue })
  highlight(0, "WinBar", { bg = deep_blue, fg = white })
  highlight(0, "WinBarNC", { bg = deep_blue, fg = cadet_blue })
  highlight(0, "WinSeparator", { link = "VertSplit" })

  -- Neovim Treesitter
  if fn.has("nvim-0.8") then
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
  else
    highlight(0, "TSAnnotation", { link = "NightflyViolet" })
    highlight(0, "TSAttribute", { link = "NightflyBlue" })
    highlight(0, "TSConstant", { link = "NightflyTurquoise" })
    highlight(0, "TSConstBuiltin", { link = "NightflyGreen" })
    highlight(0, "TSConstMacro", { link = "NightflyViolet" })
    highlight(0, "TSConstructor", { link = "NightflyEmerald" })
    highlight(0, "TSDanger", { link = "Todo" })
    highlight(0, "TSFuncBuiltin", { link = "NightflyBlue" })
    highlight(0, "TSFuncMacro", { link = "NightflyBlue" })
    highlight(0, "TSInclude", { link = "NightflyWatermelon" })
    highlight(0, "TSKeywordOperator", { link = "NightflyViolet" })
    highlight(0, "TSNamespace", { link = "NightflyTurquoise" })
    highlight(0, "TSParameter", { link = "NightflyWhite" })
    highlight(0, "TSPunctSpecial", { link = "NightflyWatermelon" })
    highlight(0, "TSSymbol", { link = "NightflyPurple" })
    highlight(0, "TSTag", { link = "NightflyBlue" })
    highlight(0, "TSTagDelimiter", { link = "NightflyGreen" })
    highlight(0, "TSVariableBuiltin", { link = "NightflyGreen" })
    -- Language specific overrides.
    highlight(0, "bashTSParameter", { link = "NightflyTurquoise" })
    highlight(0, "cssTSPunctDelimiter", { link = "NightflyWatermelon" })
    highlight(0, "cssTSType", { link = "NightflyBlue" })
    highlight(0, "scssTSPunctDelimiter", { link = "NightflyWatermelon" })
    highlight(0, "scssTSType", { link = "NightflyBlue" })
    highlight(0, "scssTSVariable", { link = "NightflyTurquoise" })
    highlight(0, "vimTSVariable", { link = "NightflyTurquoise" })
    highlight(0, "vimTSVariableBuiltin", { link = "NightflyEmerald" })
    highlight(0, "yamlTSField", { link = "NightflyBlue" })
    highlight(0, "yamlTSPunctDelimiter", { link = "NightflyWatermelon" })
  end

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

return M
