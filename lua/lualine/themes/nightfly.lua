-- nightfly theme for lualine
--
-- URL:      github.com/bluz71/vim-nightfly-colors
-- License:  MIT (https://opensource.org/licenses/MIT)

local colors = {
  -- StatusLine background colors.
  color_bg1 = "#2c3043",
  color_bg2 = "#081e2f",

  -- Mode colors.
  color1 = "#82aaff",
  color2 = "#21c7a8",
  color3 = "#ae81ff",
  color4 = "#ecc48d",
  color5 = "#ff5874",

  -- Mode text color.
  color6 = "#092236",

  -- StatusLineNC foreground.
  color7 = "#a1aab8",

  -- Text colors.
  color8 = "#c3ccdc",
  color9 = "#acb4c2"
}

return {
  normal = {
    a = { bg = colors.color1, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color1 },
    c = { bg = colors.color_bg2, fg = colors.color9 },
  },
  insert = {
    a = { bg = colors.color2, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color2 },
  },
  visual = {
    a = { bg = colors.color3, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color3 },
  },
  command = {
    a = { bg = colors.color4, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color4 },
  },
  replace = {
    a = { bg = colors.color5, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color5 },
  },
  terminal = {
    a = { bg = colors.color2, fg = colors.color6 },
    b = { bg = colors.color_bg1, fg = colors.color2 },
  },
  inactive = {
    a = { bg = colors.color_bg1, fg = colors.color7 },
    b = { bg = colors.color_bg1, fg = colors.color7 },
    c = { bg = colors.color_bg2, fg = colors.color7 },
  },
}
