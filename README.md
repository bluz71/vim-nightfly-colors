![nightfly](https://raw.githubusercontent.com/bluz71/misc-binaries/master/headings/nightfly.png)
==========

_nightfly_ is a dark GUI color scheme for Vim and Neovim heavily inspired by
Sarah Drasner's [Night Owl](https://github.com/sdras/night-owl-vscode-theme)
theme mixed with a dash of my own
[moonfly](https://github.com/bluz71/vim-moonfly-colors) theme.

Note, the _nightfly_ color scheme does incrementally change from time to time,
primarily in regards to language and plugin theming.

Prerequisites
-------------

_nightfly_ is a **GUI-only** Vim color scheme.

A GUI client, such as gvim, **or** a modern terminal version of Vim/Neovim, with
`termguicolors` enabled in a true-color terminal, will be required. Details
about true-color terminals are listed below.

Note, this theme explicitly does **not** support color terminal versions of Vim
due to the number of custom colors required. Color terminals only allow 16
custom colors. I encourage terminal users to use a true-color terminal, such as
[iTerm2](https://iterm2.com) or [GNOME
Terminal](https://wiki.gnome.org/Apps/Terminal), and enable the `termguicolors`
option available in modern versions of Vim and Neovim.

Primary Colors
--------------

| Normal     | Color                                                       | Bright     | Color                                                       |
| ---------- | ----------------------------------------------------------- | -----------| ----------------------------------------------------------- |
| Background | ![background](https://placehold.it/64/011627/000000?text=+) | Foreground | ![foreground](https://placehold.it/64/c3ccdc/000000?text=+) |
| Grey       | ![grey](https://placehold.it/64/1d3b53/000000?text=+)       | Peach      | ![peach](https://placehold.it/64/ffcb8b/000000?text=+)      |
| Red        | ![red](https://placehold.it/64/fc514e/000000?text=+)        | Watermelon | ![watermelon](https://placehold.it/64/ff5874/000000?text=+) |
| Green      | ![green](https://placehold.it/64/a1cd5e/000000?text=+)      | Emerald    | ![emerald](https://placehold.it/64/21c7a8/000000?text=+)    |
| Yellow     | ![yellow](https://placehold.it/64/e7d37a/000000?text=+)     | Tan        | ![tan](https://placehold.it/64/ecc48d/000000?text=+)        |
| Blue       | ![blue](https://placehold.it/64/82aaff/000000?text=+)       | Purple     | ![purple](https://placehold.it/64/ae81ff/000000?text=+)     |
| Violet     | ![violet](https://placehold.it/64/c792ea/000000?text=+)     | Turquoise  | ![turquoise](https://placehold.it/64/7fdbca/000000?text=+)  |
| Turquoise  | ![turquoise](https://placehold.it/64/7fdbca/000000?text=+)  | Orange     | ![orange](https://placehold.it/64/f78c6c/000000?text=+)     |

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
[vim-airline](https://github.com/vim-airline/vim-airline). To enable the
_nightfly_ airline theme, after the _vim-airline_ plugin has been installed,
please add the following to your _vimrc_:

```viml
let g:airline_theme = 'nightfly'
```

Alternatively, a simple status line,
[vim-moonfly-statusline](https://github.com/bluz71/vim-moonfly-statusline), is
available for those that just want an uncomplicated status line. After the
_vim-moonfly_statusline_ plugin has been installed, please add the following to
your _vimrc_:

```viml
let g:moonflyHonorUserDefinedColors = 1
```

Installation
------------

use your favoured plugin manager to install **bluz71/vim-nightfly-guicolors**
then set the colorscheme in your _vimrc_ file.

If using [vim-plug](https://github.com/junegunn/vim-plug) do the following:

1. Add `Plug 'bluz71/vim-nightfly-guicolors'` to your _vimrc_
2. Run `:PlugInstall`
3. Add `colorscheme nightfly` to your _vimrc_, make sure this line appears
   **after** the _Plug_ declaration.

Options
-------

The `g:nightflyCursorColor` option specifies whether to color the cursor or not.
By default the cursor will **NOT** be colored. If you prefer a colored cursor
then add the following to your _vimrc_:

```viml
let g:nightflyCursorColor = 1
```

The `g:nightflyTerminalColors` option specifies whether to use the nightfly color
palette in `:terminal` windows when `termguicolors` is set. By default this
option is **enabled** for most versions of Vim, if you prefer not to use the
nightfly color palette for the first 16 terminal colors then add the following
to your _vimrc_:

```viml
let g:nightflyTerminalColors = 0
```

:bulb: Neovim 0.5.0 or later in a terminal with `termguicolors` set [passes
through](https://github.com/neovim/neovim/pull/10994) the terminal palette
colors, hence, *nightfly* will not enable terminal colors by default, they are
not needed.

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

Many terminal programs, such as [iTerm2](http://www.iterm2.com) and
[GNOME Terminal](https://wiki.gnome.org/Apps/Terminal), support
[24-bit true colors](https://gist.github.com/XVilka/8346728). Modern versions
of Vim and Neovim, on such terminals, support true colors when
`set termguicolors` is enabled.

Caveat, _Terminal.app_ on macOS and _xterm_ on Unix do **not** support true
colors.

On terminals that do support true colors, and when `termguicolors` is set,
the _nightfly_ color scheme will emit the correct theme colors.

For the true colors _nightfly_ color scheme to display correctly inside _tmux_
the following setting will be required in _~/.tmux.conf_:

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

License
-------

[MIT](https://opensource.org/licenses/MIT)
