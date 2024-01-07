![nightfly](https://raw.githubusercontent.com/bluz71/misc-binaries/master/headings/nightfly.png)
==========

_nightfly_ is a dark midnight theme for modern Neovim and classic Vim.

Note, all _nightfly_ highlights in Neovim are implemented in Lua, whilst
highlights in Vim are implemented in legacy Vimscript.

:point_right: I maintain another dark theme named
[moonfly](https://github.com/bluz71/vim-moonfly-colors) which may be of
interest.

Screenshot
----------

![screenshot](https://raw.githubusercontent.com/bluz71/misc-binaries/master/nightfly/nightfly-screenshot.png)

Styled Features & Plugins
-------------------------

Neovim-only:

- [Neovim Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Neovim Diagnostic](https://neovim.io/doc/user/diagnostic.html)
- [Neovim LSP Semantic Highlights](https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [Hop](https://github.com/phaazon/hop.nvim)
- [Indent BlankLine](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Lazy](https://github.com/folke/lazy.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [Mini](https://github.com/echasnovski/mini.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Neogit](https://github.com/NeogitOrg/neogit)
- [Noice](https://github.com/folke/noice.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Rainbow Delimiters](https://github.com/HiPhish/rainbow-delimiters.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)

Neovim & Vim compatible:

- [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
- [clever-f](https://github.com/rhysd/clever-f.vim)
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [fzf.vim](https://github.com/junegunn/fzf.vim) (works best with matching [fly16](https://github.com/bluz71/fly16-bat) [bat](https://github.com/sharkdp/bat) theme)
- [lightline](https://github.com/itchyny/lightline.vim)
- [Tagbar](https://github.com/majutsushi/tagbar)
- [vim-airline](https://github.com/vim-airline/vim-airline)

Vim-only:

- [ALE](https://github.com/dense-analysis/ale)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [NERDTree](https://github.com/preservim/nerdtree)
- [Signify](https://github.com/mhinz/vim-signify)

:zap: Requirements
------------------

_nightfly_ is a **GUI-only** colorscheme.

A GUI client or a modern terminal version of Vim or Neovim in a true-color
terminal is required. Details about true-color terminals are [listed
here](https://github.com/bluz71/vim-nightfly-colors#true-color-terminals).

_nightfly_ explicitly does **not** support the 256 color `cterm` version of Vim.

Installation
------------

Install the **bluz71/vim-nightfly-colors** colorscheme with your preferred
plugin manager.

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
```

[vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
```

Usage
-----

Enable the colorscheme after the plugin declaration.

```vim
" Vimscript initialization file
colorscheme nightfly
```

```lua
-- Lua initialization file
vim.cmd [[colorscheme nightfly]]
```

Statusline
----------

- The _nightfly_ theme supports
  [lightline](https://github.com/itchyny/lightline.vim). To enable the
  _nightfly_ lightline theme please add the following to your
  initialization file:

```vim
let g:lightline = { 'colorscheme': 'nightfly' }
```

- The _nightfly_ theme supports
  [vim-airline](https://github.com/vim-airline/vim-airline). The _nightfly_
  theme will load once vim-airline starts.

- The _nightfly_ theme supports
  [Lualine](https://github.com/nvim-lualine/lualine.nvim). The
  _nightfly_ theme will automatically load once Lualine starts.

- My [linefly](https://github.com/bluz71/nvim-linefly) `statusline` plugin
  supports the _nightfly_ theme.

- Lastly, my legacy
  [mistfly-statusline](https://github.com/bluz71/vim-mistfly-statusline) plugin
  also supports the _nightfly_ theme.

:wrench: Options
----------------

| Option | Default State
|--------|--------------
| [nightflyCursorColor](https://github.com/bluz71/vim-nightfly-colors#nightflycursorcolor)                 | Disabled
| [nightflyItalics](https://github.com/bluz71/vim-nightfly-colors#nightflyitalics)                         | Enabled
| [nightflyNormalFloat](https://github.com/bluz71/vim-nightfly-colors#nightflynormalfloat)                 | Disabled
| [nightflyTerminalColors](https://github.com/bluz71/vim-nightfly-colors#nightflyterminalcolors)           | Enabled
| [nightflyTransparent](https://github.com/bluz71/vim-nightfly-colors#nightflytransparent)                 | Disabled
| [nightflyUndercurls](https://github.com/bluz71/vim-nightfly-colors#nightflyundercurls)                   | Enabled
| [nightflyUnderlineMatchParen](https://github.com/bluz71/vim-nightfly-colors#nightflyunderlinematchparen) | Disabled
| [nightflyVirtualTextColor](https://github.com/bluz71/vim-nightfly-colors#nightflyvirtualtextcolor)       | Disabled
| [nightflyWinSeparator](https://github.com/bluz71/vim-nightfly-colors#nightflywinseparator)               | `1`

---

### nightflyCursorColor

The `nightflyCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your initialization file:

```vim
" Vimscript initialization file
let g:nightflyCursorColor = v:true
```

```lua
-- Lua initialization file
vim.g.nightflyCursorColor = true
```

---

### nightflyItalics

The `nightflyItalics` option specifies whether to use italics for comments and
certain HTML elements in GUI versions of Vim. By default this option is
**enabled**. If you do not like the appearance of italics then add the following
to your initialization file:

```vim
" Vimscript initialization file
let g:nightflyItalics = v:false
```

```lua
-- Lua initialization file
vim.g.nightflyItalics = false
```

---

### nightflyNormalFloat

The `nightflyNormalFloat` option specifies whether to use nightfly background
and foreground colors in Neovim floating windows. By default this option is
**disabled**, hence, Neovim floating windows will usually be styled with popup
menu colors. If you would like to use nightfly colors instead then add the
following to your configuration:

```vim
" Vimscript initialization file
let g:nightflyNormalFloat = v:true
```

```lua
-- Lua initialization file
vim.g.nightflyNormalFloat = true
```

:bulb: If the above option is set then it is highly recommended to enable
floating window borders to distinguish between the edit and floating windows in
Neovim's LSP client, for example:

```lua
  vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
    vim.lsp.handlers.hover, {
      border = "single"
    }
  )
  vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signatureHelp, {
      border = "single"
    }
  )
  vim.diagnostic.config({ float = { border = "single" } })
```

:bulb: Likewise, [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) may be
configured as follows for nicer display when `g:nightflyNormalFloat` is enabled:

```lua
local winhighlight = {
  winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
}
require('cmp').setup({
  window = {
    completion = cmp.config.window.bordered(winhighlight),
    documentation = cmp.config.window.bordered(winhighlight),
  }
})
```

---

### nightflyTerminalColors

The `nightflyTerminalColors` option specifies whether to use the nightfly color
palette in `:terminal` windows when `termguicolors` is set. By default this
option is **enabled**. If you prefer not to use the nightfly color palette for
the first 16 terminal colors then add the following to your initialization file:

```vim
" Vimscript initialization file
let g:nightflyTerminalColors = v:false
```

```lua
-- Lua initialization file
vim.g.nightflyTerminalColors = false
```

---

### nightflyTransparent

The `nightflyTransparent` option specifies whether to use an opaque or
transparent background in GUI versions of Vim. By default this option is
**disabled**. If you would like a transparent background then add the following
to your initialization file:

```vim
" Vimscript initialization file
let g:nightflyTransparent = v:true
```

```lua
-- Lua initialization file
vim.g.nightflyTransparent = true
```

---

### nightflyUndercurls

The `nightflyUndercurls` option specifies whether to use undercurls for
spelling and linting errors in GUI versions of Vim, including terminal Vim with
`termguicolors` set. By default this option is **enabled**. If you do not like
the appearance of undercurls then add the following to your initialization file:

```vim
" Vimscript initialization file
let g:nightflyUndercurls = v:false
```

```lua
-- Lua initialization file
vim.g.nightflyUndercurls = false
```

---

### nightflyUnderlineMatchParen

The `nightflyUnderlineMatchParen` option specifies whether to underline
matching parentheses. By default this option is **disabled**. If you want to
underline matching parentheses then add the following to your initialization
file:

```vim
" Vimscript initialization file
let g:nightflyUnderlineMatchParen = v:true
```

```lua
-- Lua initialization file
vim.g.nightflyUnderlineMatchParen = true
```

---

### nightflyVirtualTextColor

The `nightflyVirtualTextColor` option specifies whether to display diagnostic
virtual text in color. By default this option is **disabled**. If you want to
display diagnostic virtual text in color then add the following to your
initialization file:

```vim
" Vimscript initialization file
let g:nightflyVirtualTextColor = v:true
```

```lua
-- Lua initialization file
vim.g.nightflyVirtualTextColor = true
```

---

### nightflyWinSeparator

The `nightflyWinSeparator` option specifies the style of window separators:

- `0` will display no window separators

- `1` will display block separators; this is the default

- `2` will diplay line separators

For example, if line separators are desired then add the following to your
configuration:

```vim
" Vimscript initialization file
let g:nightflyWinSeparator = 2
```

```lua
-- Lua initialization file
vim.g.nightflyWinSeparator = 2
```

:gift: If using Neovim 0.7 (or later), the following configuration will improve
the look of line separators (if option `2` has been chosen) by selecting thicker
characters for the separators:

```vim
" Vimscript initialization file
set fillchars=horiz:━,horizup:┻,horizdown:┳,vert:┃,vertleft:┨,vertright:┣,verthoriz:╋
```

```lua
-- Lua initialization file
vim.opt.fillchars = { horiz = '━', horizup = '┻', horizdown = '┳', vert = '┃', vertleft = '┫', vertright = '┣', verthoriz = '╋', }
```

Overriding Highlights
---------------------

If a certain highlight of this theme does not suit then it is recommended to use
an `autocmd` to override that desired highlight.

For example, if one wishes to highlight functions in bold then simply add the
following to your initialization file prior to setting the colorscheme:

```vim
" Vimscript initialization file
augroup CustomHighlight
    autocmd!
    autocmd ColorScheme nightfly highlight Function guifg=#82aaff gui=bold
augroup END
```

```lua
-- Lua initialization file
local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "nightfly",
  callback = function()
    vim.api.nvim_set_hl(0, "Function", { fg = "#82aaff", bold = true })
  end,
  group = custom_highlight,
})
```

True Color Terminals
--------------------

Many modern terminals support [24-bit true
colors](https://gist.github.com/XVilka/8346728). Current versions of Vim &
Neovim on such terminals support true colors when `set termguicolors` is
enabled.

A list of popular terminals that support true colors:

- [iTerm2](http://www.iterm2.com)
- [Windows Terminal](https://github.com/Microsoft/Terminal)
- [Alacritty](https://github.com/alacritty/alacritty)
- [kitty](https://sw.kovidgoyal.net/kitty/index.html)
- [konsole](https://konsole.kde.org)
- [PuTTY](https://putty.org)
- [mintty](https://mintty.github.io)

On terminals that support true colors, and when `termguicolors` is set, the
_nightfly_ colorscheme will emit the correct theme colors.

For the _nightfly_ colorscheme to display correctly inside _tmux_ the following
setting will usually be required in _~/.tmux.conf_:

```
set -ga terminal-overrides ',xterm-256color:Tc'
```

Vim, as against Neovim, inside _tmux_, will also require the following settings
be added to the `~/.vimrc` file:

```vim
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

Extra Themes
------------

A collection of _nightfly_-flavoured themes are provided:

- [Alacritty](https://github.com/alacritty/alacritty) users can copy
  [this](extras/nightfly-alacritty.toml) theme into their `alacritty.toml`
  configuration

- [kitty](https://sw.kovidgoyal.net/kitty) users can use
  [this](extras/kitty-theme.conf) theme

- [fish](https://fishshell.com) users can use [this](extras/nightfly.fish) theme

- _iTerm2_ users on macOS can import
  [this](extras/nightfly.itermcolors) colorscheme

- [Windows Terminal](https://github.com/microsoft/terminal) users can copy
  [this](extras/windows-terminal-settings.json) theme into their `settings.json`
  configuration

For other terminals please configure appropriately with the following colors:

| Type           | Category        | Value     | Color
|----------------|-----------------|-----------|------------------------------------------------------
| Background     | Background      | `#011627` | ![background](https://place-hold.it/32/011627?text=+)
| Foreground     | Foreground      | `#bdc1c6` | ![background](https://place-hold.it/32/bdc1c6?text=+)
| Bold           | Bold            | `#eeeeee` | ![background](https://place-hold.it/32/eeeeee?text=+)
| Cursor         | Cursor          | `#9ca1aa` | ![background](https://place-hold.it/32/9ca1aa?text=+)
| Cursor Text    | Cursor Text     | `#080808` | ![background](https://place-hold.it/32/080808?text=+)
| Selection      | Selection       | `#b2ceee` | ![background](https://place-hold.it/32/b2ceee?text=+)
| Selection Text | Selection Text  | `#080808` | ![background](https://place-hold.it/32/080808?text=+)
| Color 1        | Black (normal)  | `#1d3b53` | ![background](https://place-hold.it/32/1d3b53?text=+)
| Color 2        | Red (normal)    | `#fc514e` | ![background](https://place-hold.it/32/fc514e?text=+)
| Color 3        | Green (normal)  | `#a1cd5e` | ![background](https://place-hold.it/32/a1cd5e?text=+)
| Color 4        | Yellow (normal) | `#e3d18a` | ![background](https://place-hold.it/32/e3d18a?text=+)
| Color 5        | Blue (normal)   | `#82aaff` | ![background](https://place-hold.it/32/82aaff?text=+)
| Color 6        | Purple (normal) | `#c792ea` | ![background](https://place-hold.it/32/c792ea?text=+)
| Color 7        | Cyan (normal)   | `#7fdbca` | ![background](https://place-hold.it/32/7fdbca?text=+)
| Color 8        | White (normal)  | `#a1aab8` | ![background](https://place-hold.it/32/a1aab8?text=+)
| Color 9        | Black (bright)  | `#7c8f8f` | ![background](https://place-hold.it/32/7c8f8f?text=+)
| Color 10       | Red (bright)    | `#ff5874` | ![background](https://place-hold.it/32/ff5874?text=+)
| Color 11       | Green (bright)  | `#21c7a8` | ![background](https://place-hold.it/32/21c7a8?text=+)
| Color 12       | Yellow (bright) | `#ecc48d` | ![background](https://place-hold.it/32/ecc48d?text=+)
| Color 13       | Blue (bright)   | `#82aaff` | ![background](https://place-hold.it/32/82aaff?text=+)
| Color 14       | Purple (bright) | `#ae81ff` | ![background](https://place-hold.it/32/ae81ff?text=+)
| Color 15       | Cyan (bright)   | `#7fdbca` | ![background](https://place-hold.it/32/7fdbca?text=+)
| Color 16       | White (bright)  | `#d6deeb` | ![background](https://place-hold.it/32/d6deeb?text=+)

Sponsor
-------

[![Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/bluz71)

License
-------

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
