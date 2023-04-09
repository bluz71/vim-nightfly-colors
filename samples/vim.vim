" Enable syntax highlighting.
"
syntax on


" General vim settings.
"
set autoindent        " Indented text
set autoread          " Pick up external changes to files
set autowrite         " Write files when navigating with :next/:previous
set background=dark   " Dark background by default
set backspace=indent,eol,start
set belloff=all       " Bells are annoying
set wildmode=full     " Complete the next full match
set wrap              " Wrap long lines

"===========================================================
" MAPPINGS
"
" ~/dotfiles/vim/plugin/mappings.vim - custom mappings
"===========================================================
let mapleader = ","

"===========================================================
" PLUGINS
"===========================================================

" Automatically install vim-plug and run PlugInstall if vim-plug is not found.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize vim-plug.
call plug#begin('~/.vim/plugged')

Plug 'nelstrom/vim-visual-star-search'
Plug 'michaeljsmith/vim-indent-object'
Plug 'wellle/targets.vim'

" Finalize vim-plug.
call plug#end()


" Load up the match it plugin which provides smart % XML/HTML matching.
runtime macros/matchit.vim
