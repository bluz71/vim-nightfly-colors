![nightfly](https://raw.githubusercontent.com/bluz71/misc-binaries/master/headings/nightfly.png)
==========

_nightfly_ is a dark GUI colorscheme for Vim & Neovim.

:point_right: I maintain another dark Vim theme named
[moonfly](https://github.com/bluz71/vim-moonfly-colors) which may be of
interest.

Screenshot
----------

![screenshot](https://raw.githubusercontent.com/bluz71/misc-binaries/master/nightfly/nightfly-screenshot.png)

:zap: Prerequisites
-------------------

_nightfly_ is a **GUI-only** colorscheme.

A GUI client, such as Gvim, or a modern terminal version of Vim/Neovim with
`termguicolors` enabled in a true-color terminal, will be required. Details
about true-color terminals are listed below.

_nightfly_ explicitly does **not** support the 256 color `cterm` version of Vim
due to the number of custom colors required. 256 color terminals only allow 16
custom colors. I encourage terminal users to use a true-color terminal, such as:
[iTerm2](https://iterm2.com),
[Alacritty](https://github.com/alacritty/alacritty), or
[kitty](https://sw.kovidgoyal.net/kitty/index.html) and enable the
`termguicolors` option.

Styled Features & Plugins
-------------------------

Vim & Neovim compatible:

- [ALE](https://github.com/dense-analysis/ale)
- [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
- [clever-f](https://github.com/rhysd/clever-f.vim)
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [fzf.vim](https://github.com/junegunn/fzf.vim) (works best with matching [fly16](https://github.com/bluz71/fly16-bat) [bat](https://github.com/sharkdp/bat) theme)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [lightline](https://github.com/itchyny/lightline.vim)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [Signify](https://github.com/mhinz/vim-signify)
- [Tagbar](https://github.com/majutsushi/tagbar)
- [vim-airline](https://github.com/vim-airline/vim-airline)

Neovim-only:

- [Neovim Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Neovim Diagnostic](https://neovim.io/doc/user/diagnostic.html)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [Hop](https://github.com/phaazon/hop.nvim)
- [Indent BlankLine](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Mini](https://github.com/echasnovski/mini.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)

Installation
------------

Install the **bluz71/vim-nightfly-guicolors** colorscheme with your preferred
plugin manager.

[vim-plug](https://github.com/junegunn/vim-plug):

```viml
Plug 'bluz71/vim-nightfly-guicolors'
```

[packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'bluz71/vim-nightfly-guicolors'
```

Usage
-----

Enable the colorscheme after the plugin declaration.

```viml
" Vimscript initialization file
colorscheme nightfly
```

```lua
-- Lua initialization file
vim.cmd [[colorscheme nightfly]]
```

Statusline
----------

- The _nightfly_ colorscheme supports
  [lightline](https://github.com/itchyny/lightline.vim). To enable the
  _nightfly_ lightline colorscheme please add the following to your
  initialization file:

```viml
let g:lightline = { 'colorscheme': 'nightfly' }
```

- The _nightfly_ colorscheme supports
  [vim-airline](https://github.com/vim-airline/vim-airline). For modern
  versions of _vim-airline_ the _nightfly_ theme will automatically be loaded.

- The _nightfly_ colorscheme supports
  [Lualine](https://github.com/nvim-lualine/lualine.nvim). To enable the
  _nightfly_ theme please add the following to your initialization file:

```lua
require('lualine').setup({options = {theme = 'nightfly'}})
```

- Lastly, my own
  [mistfly-statusline](https://github.com/bluz71/vim-mistfly-statusline) is
  available for those that want a simple, fast and informative status line.

:wrench: Options
----------------

The `nightflyCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your initialization file:

```viml
" Vimscript initialization file
let g:nightflyCursorColor = 1
```

```lua
-- Lua initialization file
vim.g.nightflyCursorColor = 1
```

---

The `nightflyItalics` option specifies whether to use italics for comments and
certain HTML elements in GUI versions of Vim. By default this option is
**enabled**. If you do not like the appearance of italics then add the following
to your initialization file:

```viml
" Vimscript initialization file
let g:nightflyItalics = 0
```

```lua
-- Lua initialization file
vim.g.nightflyItalics = 0
```

---

The `nightflyNormalFloat` option specifies whether to use nightfly background
and foreground colors in Neovim floating windows. By default this option is
**disabled**, hence, Neovim floating windows will usually be styled with popup
menu colors. If you would like to use nightfly colors instead then add the
following to your configuration:

```viml
" Vimscript initialization file
let g:nightflyNormalFloat = 1
```

```lua
-- Lua initialization file
vim.g.nightflyNormalFloat = 1
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

The `nightflyTerminalColors` option specifies whether to use the nightfly color
palette in `:terminal` windows when `termguicolors` is set. By default this
option is **enabled**. If you prefer not to use the nightfly color palette for
the first 16 terminal colors then add the following to your initialization file:

```viml
" Vimscript initialization file
let g:nightflyTerminalColors = 0
```

```lua
-- Lua initialization file
vim.g.nightflyTerminalColors = 0
```

---

The `nightflyTransparent` option specifies whether to use an opaque or
transparent background in GUI versions of Vim. By default this option is
**disabled**. If you would like a transparent background then add the following
to your initialization file:

```viml
" Vimscript initialization file
let g:nightflyTransparent = 1
```

```lua
-- Lua initialization file
vim.g.nightflyTransparent = 1
```

---

The `nightflyUndercurls` option specifies whether to use undercurls for
spelling and linting errors in GUI versions of Vim, including terminal Vim with
`termguicolors` set. By default this option is **enabled**. If you do not like
the appearance of undercurls then add the following to your initialization file:

```viml
" Vimscript initialization file
let g:nightflyUndercurls = 0
```

```lua
-- Lua initialization file
vim.g.nightflyUndercurls = 0
```

---

The `nightflyUnderlineMatchParen` option specifies whether to underline
matching parentheses. By default this option is **disabled**. If you want to
underline matching parentheses then add the following to your initialization
file:

```viml
" Vimscript initialization file
let g:nightflyUnderlineMatchParen = 1
```

```lua
-- Lua initialization file
vim.g.nightflyUnderlineMatchParen = 1
```

---

The `nightflyWinSeparator` option specifies the style of window separators:

- `0` will display no window separators

- `1` will display block separators; this is the default

- `2` will diplay line separators

For example, if line separators are desired then add the following to your
configuration:

```viml
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

```viml
" Vimscript initialization file
set fillchars=horiz:━,horizup:┻,horizdown:┳,vert:┃,vertleft:┨,vertright:┣,verthoriz:╋
```

```lua
-- Lua initialization file
vim.opt.fillchars = { horiz = '━', horizup = '┻', horizdown = '┳', vert = '┃', vertleft = '┫', vertright = '┣', verthoriz = '╋', }
```

True Color Terminals
--------------------

Many modern terminals support [24-bit true
colors](https://gist.github.com/XVilka/8346728). Current versions of Vim &
Neovim on such terminals support true colors when `set termguicolors` is
enabled.

A list of popular terminals that support true colors:

- [iTerm2](http://www.iterm2.com)
- [GNOME Terminal](https://wiki.gnome.org/Apps/Terminal)
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

```viml
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

Terminal Themes
---------------

A collection of _nightfly_-flavoured terminal themes are provided:

- _iTerm2_ users on macOS can import
  [this](terminal_themes/nightfly.itermcolors) colorscheme

- [Alacritty](https://github.com/alacritty/alacritty) users can copy
  [this](terminal_themes/alacritty.yml) theme into their `alacritty.yml`
  configuration.

- [kitty](https://sw.kovidgoyal.net/kitty) users can use
  [this](terminal_themes/kitty-theme.conf) theme

- _GNOME Terminal_ users can run
  [this](terminal_themes/gnome-terminal-nightfly.sh) script to create a
  _Nightfly_ profile. Before executing the script, please install the
  `dconf-cli` command line utility for modern versions of Gnome (3.28 and
  later), for example `sudo apt install dconf-cli`. After executing the script,
  please set the _cursor_ and _selection_ colors by hand, with the appropriate
  color values listed below, in `Preferences` / `Nightfly` / `Colors`.

For other terminals please configure appropriately with the following colors:

| Type           | Category        | Value     | Color                                                       |
|----------------|-----------------|-----------|-------------------------------------------------------------|
| Background     | Background      | `#011627` | ![background](https://place-hold.it/32/011627?text=+) |
| Foreground     | Foreground      | `#acb4c2` | ![background](https://place-hold.it/32/acb4c2?text=+) |
| Bold           | Bold            | `#eeeeee` | ![background](https://place-hold.it/32/eeeeee?text=+) |
| Cursor         | Cursor          | `#9ca1aa` | ![background](https://place-hold.it/32/9ca1aa?text=+) |
| Cursor Text    | Cursor Text     | `#080808` | ![background](https://place-hold.it/32/080808?text=+) |
| Selection      | Selection       | `#b2ceee` | ![background](https://place-hold.it/32/b2ceee?text=+) |
| Selection Text | Selection Text  | `#080808` | ![background](https://place-hold.it/32/080808?text=+) |
| Color 1        | Black (normal)  | `#1d3b53` | ![background](https://place-hold.it/32/1d3b53?text=+) |
| Color 2        | Red (normal)    | `#fc514e` | ![background](https://place-hold.it/32/fc514e?text=+) |
| Color 3        | Green (normal)  | `#a1cd5e` | ![background](https://place-hold.it/32/a1cd5e?text=+) |
| Color 4        | Yellow (normal) | `#e3d18a` | ![background](https://place-hold.it/32/e3d18a?text=+) |
| Color 5        | Blue (normal)   | `#82aaff` | ![background](https://place-hold.it/32/82aaff?text=+) |
| Color 6        | Purple (normal) | `#c792ea` | ![background](https://place-hold.it/32/c792ea?text=+) |
| Color 7        | Cyan (normal)   | `#7fdbca` | ![background](https://place-hold.it/32/7fdbca?text=+) |
| Color 8        | White (normal)  | `#a1aab8` | ![background](https://place-hold.it/32/a1aab8?text=+) |
| Color 9        | Black (bright)  | `#7c8f8f` | ![background](https://place-hold.it/32/7c8f8f?text=+) |
| Color 10       | Red (bright)    | `#ff5874` | ![background](https://place-hold.it/32/ff5874?text=+) |
| Color 11       | Green (bright)  | `#21c7a8` | ![background](https://place-hold.it/32/21c7a8?text=+) |
| Color 12       | Yellow (bright) | `#ecc48d` | ![background](https://place-hold.it/32/ecc48d?text=+) |
| Color 13       | Blue (bright)   | `#82aaff` | ![background](https://place-hold.it/32/82aaff?text=+) |
| Color 14       | Purple (bright) | `#ae81ff` | ![background](https://place-hold.it/32/ae81ff?text=+) |
| Color 15       | Cyan (bright)   | `#7fdbca` | ![background](https://place-hold.it/32/7fdbca?text=+) |
| Color 16       | White (bright)  | `#d6deeb` | ![background](https://place-hold.it/32/d6deeb?text=+) |

Sponsor
-------

[![Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/bluz71)

License
-------

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
