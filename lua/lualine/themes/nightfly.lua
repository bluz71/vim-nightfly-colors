-- nightfly theme for lualine
--
-- URL:     github.com/bluz71/vim-nightfly-colors
-- License: MIT (https://opensource.org/licenses/MIT)

-- LuaFormatter off
local colors = {
  -- StatusLine background color.
  color0 = '#2c3043',

  -- Mode colors.
  color1 = '#82aaff',
  color2 = '#21c7a8',
  color3 = '#ae81ff',
  color4 = '#ecc48d',
  color5 = '#ff5874',

  -- Mode text color.
  color6 = '#092236',

  -- StatusLineNC foreground.
  color7 = '#a1aab8',

  -- Normal text color.
  color8 = '#c3ccdc',
}

-- LuaFormatter on
return {
  normal = {
    a = {fg = colors.color6, bg = colors.color1},
    b = {fg = colors.color1, bg = colors.color0},
    c = {fg = colors.color8, bg = colors.color0}
  },
  insert = {
    a = {fg = colors.color6, bg = colors.color2},
    b = {fg = colors.color2, bg = colors.color0}
  },
  visual = {
    a = {fg = colors.color6, bg = colors.color3},
    b = {fg = colors.color3, bg = colors.color0}
  },
  command = {
    a = {fg = colors.color6, bg = colors.color4},
    b = {fg = colors.color4, bg = colors.color0}
  },
  replace = {
    a = {fg = colors.color6, bg = colors.color5},
    b = {fg = colors.color5, bg = colors.color0}
  },
  inactive = {
    a = {fg = colors.color7, bg = colors.color0},
    b = {fg = colors.color7, bg = colors.color0},
    c = {fg = colors.color7, bg = colors.color0}
  },
}
