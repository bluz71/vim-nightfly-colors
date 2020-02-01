![nightfly](https://raw.githubusercontent.com/bluz71/misc-binaries/master/headings/nightfly.png)
==========

_nightfly_ is a dark GUI color scheme for Vim and Neovim heavily inspired by
Sarah Drasner's [Night Owl](https://github.com/sdras/night-owl-vscode-theme)
theme mixed with a dash of my own
[moonfly](https://github.com/bluz71/vim-moonfly-colors) theme, hence the name
_nightfly_.

Be aware, the _nightfly_ color scheme does incrementally change from time to
time, primarily with regard to language and plugin theming.

Prerequisites
-------------

_nightfly_ is a **GUI-only** Vim color scheme.

A GUI client, such as gvim, **or** a modern terminal version of Vim/Neovim, with
`termguicolors` enabled in a true-color terminal, will be required. Details
about true-color terminals are listed below.

_nightfly_ explicitly does **not** support color terminal versions of Vim,
including 256 `cterm`, due to the number of custom colors required. Color
terminals only allow 16 custom colors. I encourage terminal users to use a
true-color terminal, such as [iTerm2](https://iterm2.com) or [GNOME
Terminal](https://wiki.gnome.org/Apps/Terminal), and enable the `termguicolors`
option available in modern terminal versions of Vim and Neovim.

Primary Colors
--------------

| Normal     | Color                                                       | Bright     | Color                                                       |
| ---------- | ----------------------------------------------------------- | -----------| ----------------------------------------------------------- |
| Background | ![background](https://placehold.it/64/011627/000000?text=+) | Foreground | ![foreground](https://placehold.it/64/c3ccdc/000000?text=+) |
| Red        | ![red](https://placehold.it/64/fc514e/000000?text=+)        | Watermelon | ![watermelon](https://placehold.it/64/ff5874/000000?text=+) |
| Green      | ![green](https://placehold.it/64/a1cd5e/000000?text=+)      | Emerald    | ![emerald](https://placehold.it/64/21c7a8/000000?text=+)    |
| Yellow     | ![yellow](https://placehold.it/64/e7d37a/000000?text=+)     | Tan        | ![tan](https://placehold.it/64/ecc48d/000000?text=+)        |
| Blue       | ![blue](https://placehold.it/64/82aaff/000000?text=+)       | Purple     | ![purple](https://placehold.it/64/ae81ff/000000?text=+)     |
| Violet     | ![violet](https://placehold.it/64/c792ea/000000?text=+)     | Turquoise  | ![turquoise](https://placehold.it/64/7fdbca/000000?text=+)  |
| Orange     | ![orange](https://placehold.it/64/f78c6c/000000?text=+)     | Peach      | ![peach](https://placehold.it/64/ffcb8b/000000?text=+)      |

Screenshots
-----------

### Ruby

<img width="800" alt="ruby" src="https://raw.githubusercontent.com/bluz71/misc-binaries/master/nightfly/ruby_nightfly.png">

### JavaScript

<img width="800" alt="javascript" src="https://raw.githubusercontent.com/bluz71/misc-binaries/master/nightfly/javascript_nightfly.png">

The font in use is [Iosevka](https://github.com/be5invis/Iosevka).

Languages explicitly styled
---------------------------

- C/C++
- Clojure
- CoffeeScript
- Crystal
- Elixir
- Elm
- Dart
- Go
- Haskell
- Java
- [JavaScript](https://github.com/pangloss/vim-javascript)
- Lua
- [Markdown](https://github.com/plasticboy/vim-markdown)
- PHP
- PureScript
- Python
- Ruby
- Rust
- Scala
- Shell
- [TypeScript](https://github.com/HerringtonDarkholme/yats.vim)

Plugins explicity styled
------------------------

- [NERDTree](https://github.com/scrooloose/nerdtree)
- [ALE](https://github.com/w0rp/ale)
- [Neomake](https://github.com/neomake/neomake)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
- [BufExplorer](https://github.com/jlanzarotta/bufexplorer)
- [clever-f](https://github.com/rhysd/clever-f.vim)
- [Tagbar](https://github.com/majutsushi/tagbar)
- [indentLine](https://github.com/Yggdroot/indentLine) (please set `let g:indentLine_setColors = 0` in your _vimrc_)

Installation
------------

use your favoured plugin manager to install **bluz71/vim-nightfly-guicolors**
then set the colorscheme in your _vimrc_ file.

If using [vim-plug](https://github.com/junegunn/vim-plug) do the following:

1. Add `Plug 'bluz71/vim-nightfly-guicolors'` to your _vimrc_
2. Run `:PlugInstall`
3. Add `colorscheme nightfly` to your _vimrc_, make sure this line appears
   **after** the _Plug_ declaration.

Status line
-----------

The _nightfly_ color scheme supports
[lightline.vim](https://github.com/itchyny/lightline.vim). To enable the
_nightfly_ lightline colorscheme, after the _lightline.vim_ plugin has been
installed, please add the following to your _vimrc_:

```viml
let g:lightline = { 'colorscheme': 'nightfly' }
```

The _nightfly_ color scheme also supports
[vim-airline](https://github.com/vim-airline/vim-airline). With modern versions
of _vim-airline_ the _nightfly_ theme will be automatically loaded.

Alternatively,
[vim-moonfly-statusline](https://github.com/bluz71/vim-moonfly-statusline) is
available for those that want a simple yet informative status line. After the
_vim-moonfly_statusline_ plugin has been installed, please add the following to
your _vimrc_:

```viml
let g:moonflyHonorUserDefinedColors = 1
```

This option will tell _moonfly-statusline_ to not use the default
[moonfly](https://github.com/bluz71/vim-moonfly-colors) colors of that plugin,
but instead use the specified `statusline` colors defined by this _nightfly_
theme.

Options
-------

The `g:nightflyCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your _vimrc_:

```viml
let g:nightflyCursorColor = 1
```

The `g:nightflyTerminalColors` option specifies whether to use the nightfly
color palette in `:terminal` windows when `termguicolors` is set. By default
this option is **enabled**. If you prefer not to use the nightfly color palette
for the first 16 terminal colors then add the following to your _vimrc_:

```viml
let g:nightflyTerminalColors = 0
```

The `g:nightflyUnderlineMatchParen` option specifies whether to underline
matching parentheses. By default this option is **disabled**. If you want to
underline matching parentheses then add the following to your _vimrc_:

```viml
let g:nightflyUnderlineMatchParen = 1
```

The `g:nightflyUndercurls` option specifies whether to use undercurls for
spelling and linting errors in GUI versions of Vim, including terminal Vim with
`termguicolors` set. By default this option is **enabled**. If you do not like
the appearance of undercurls then add the following to your _vimrc_:

```viml
let g:nightflyUndercurls = 0
```

The `g:nightflyItalics` option specifies whether to use italics for comments and
certain html elements in GUI versions of Vim, including terminal Vim with
`termguicolors` set. By default this option is **enabled**. If you do not like
the appearance of italics then add the following to your _vimrc_:

```viml
let g:nightflyItalics = 0
```

The `g:nightflyFloatingFZF` option specifies whether to style the
[fzf.vim](https://github.com/junegunn/fzf.vim) plugin for display in a floating
window. By default this option is **disabled**, fzf will be styled for display
in a split window in that case. If one configures fzf to display in a floating
window then add the following to your _vimrc_:

```viml
let g:nightflyFloatingFZF = 1
```

Here is an example user configuration that displays fzf in a Neovim floating
window:

```viml
if has('nvim')
    function! FloatingFZF()
        let width = float2nr(&columns * 0.85)
        let height = float2nr(&lines * 0.70)
        let opts = { 'relative': 'editor',
                    \ 'row': (&lines - height) / 2,
                    \ 'col': (&columns - width) / 2,
                    \ 'width': width,
                    \ 'height': height,
                    \ 'style': 'minimal'}

        let win = nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    endfunction

    let g:fzf_layout = { 'window': 'call FloatingFZF()' }
endif
```

True Color Terminals
--------------------

Many modern terminal programs support [24-bit true
colors](https://gist.github.com/XVilka/8346728). Current versions of Vim and
Neovim, on such terminals, support true colors when `set termguicolors` is
enabled.

A list of common terminals that support true colors:

- [iTerm2](http://www.iterm2.com)
- [GNOME Terminal](https://wiki.gnome.org/Apps/Terminal)
- [Windows Terminal](https://github.com/microsoft/terminal)
- [alacritty](https://github.com/alacritty/alacritty)
- [kitty](https://sw.kovidgoyal.net/kitty/index.html)
- [konsole](https://konsole.kde.org)
- [PuTTY](https://putty.org)
- [mintty](https://mintty.github.io)

:bomb: _Terminal.app_ on macOS and _xterm_ on Unix do **not** support true
colors.

On terminals that support true colors, and when `termguicolors` is set, the
_nightfly_ color scheme will emit the correct theme colors.

For the _nightfly_ color scheme to display correctly inside _tmux_ the following
setting will be required in _~/.tmux.conf_:

```
set -ga terminal-overrides ',xterm-256color:Tc'
```

Vim, as against Neovim, inside _tmux_, will also require the following setting
be added to _vimrc:_

```viml
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

Repeating, the above `t_8*` settings are **not** required for Neovim.

Color Values
------------

RGB values for the _nightfly_ colors:

| Name       | Value    | Color                                                      | Name       | Value    | Color                                                      |
| ---------- |----------| -----------------------------------------------------------| ---------- |----------| -----------------------------------------------------------|
| Red        | `fc514e` | ![background](https://placehold.it/32/fc514e/000000?text=+)| Background | `011627` | ![background](https://placehold.it/32/011627/000000?text=+)|
| Green      | `a1cd5e` | ![background](https://placehold.it/32/a1cd5e/000000?text=+)| Foreground | `c3ccdc` | ![background](https://placehold.it/32/c3ccdc/000000?text=+)|
| Yellow     | `e7d37a` | ![background](https://placehold.it/32/e7d37a/000000?text=+)| Black Blue | `081e2f` | ![background](https://placehold.it/32/081e2f/000000?text=+)|
| Blue       | `82aaff` | ![background](https://placehold.it/32/82aaff/000000?text=+)| Dark Blue  | `092236` | ![background](https://placehold.it/32/092236/000000?text=+)|
| Violet     | `c792ea` | ![background](https://placehold.it/32/c792ea/000000?text=+)| Deep Blue  | `0e293f` | ![background](https://placehold.it/32/0e293f/000000?text=+)|
| Orange     | `f78c6c` | ![background](https://placehold.it/32/f78c6c/000000?text=+)| Slate Blue | `2c3043` | ![background](https://placehold.it/32/2c3043/000000?text=+)|
| Watermelon | `ff5874` | ![background](https://placehold.it/32/ff5874/000000?text=+)| Regal Blue | `1d3b53` | ![background](https://placehold.it/32/1d3b53/000000?text=+)|
| Emerald    | `21c7a8` | ![background](https://placehold.it/32/21c7a8/000000?text=+)| Cyan Blue  | `296596` | ![background](https://placehold.it/32/296596/000000?text=+)|
| Tan        | `ecc48d` | ![background](https://placehold.it/32/ecc48d/000000?text=+)| Steel Blue | `4b6479` | ![background](https://placehold.it/32/4b6479/000000?text=+)|
| Purple     | `ae81ff` | ![background](https://placehold.it/32/ae81ff/000000?text=+)| Grey Blue  | `7c8f8f` | ![background](https://placehold.it/32/7c8f8f/000000?text=+)|
| Turquoise  | `7fdbca` | ![background](https://placehold.it/32/7fdbca/000000?text=+)| Cadet Blue | `a1aab8` | ![background](https://placehold.it/32/a1aab8/000000?text=+)|
| Peach      | `ffcb8b` | ![background](https://placehold.it/32/ffcb8b/000000?text=+)| White Blue | `d6deeb` | ![background](https://placehold.it/32/d6deeb/000000?text=+)|

Tip: Relative Number Column Highlighting only for the Active Window
-------------------------------------------------------------------

Historically, when `relativenumber` was set whilst `cursorline` was not set,
Vim would automatically highlight the cursor line in the number column with
the `CursorLineNR` highlight group. However, newer versions of Vim no longer
do that by default unless `cursorline` is set and the new `cursorlineopt`
option is also set accordingly.

At the same time I also like disabling `relativenumber` for inactive windows.

To achieve all that please add something similar to the following to your
_vimrc_:

```viml
set relativenumber
if exists('&cursorlineopt')
    set cursorlineopt=number
    set cursorline
endif

function! RelativeNumberActivity(mode)
    if &diff
        " For diffs, do nothing since we want relativenumbers in all windows.
        return
    endif
    if &buftype == "nofile" || &buftype == "nowrite"
        setlocal nonumber
    elseif a:mode == "active"
        setlocal relativenumber
        if exists('&cursorlineopt')
            setlocal cursorline
        endif
    else
        setlocal norelativenumber
        if exists('&cursorlineopt')
            setlocal nocursorline
        endif
    endif
endfunction

augroup CustomWindowActivity
    autocmd!
    autocmd WinEnter * call RelativeNumberActivity("active")
    autocmd WinLeave * call RelativeNumberActivity("inactive")
    if exists('&cursorlineopt')
        autocmd FileType nerdtree setlocal cursorlineopt=both
    endif
augroup END
```

Feel free to change, or ignore, per your needs.

License
-------

[MIT](https://opensource.org/licenses/MIT)
