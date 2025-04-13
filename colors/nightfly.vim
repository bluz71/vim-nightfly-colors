" Dark Vim/Neovim colorscheme.
"
" URL:      github.com/bluz71/vim-nightfly-colors
" License:  MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif

" Set colorscheme name.
let g:colors_name='nightfly'

" Define theme options.
let g:nightflyCursorColor = get(g:, 'nightflyCursorColor', v:false)
let g:nightflyItalics = get(g:, 'nightflyItalics', v:true)
let g:nightflyNormalFloat = get(g:, 'nightflyNormalFloat', v:false)
let g:nightflyTerminalColors = get(g:, 'nightflyTerminalColors', v:true)
let g:nightflyTransparent = get(g:, 'nightflyTransparent', v:false)
let g:nightflyUndercurls = get(g:, 'nightflyUndercurls', v:true)
let g:nightflyUnderlineMatchParen = get(g:, 'nightflyUnderlineMatchParen', v:false)
let g:nightflyVirtualTextColor =  get(g:, 'nightflyVirtualTextColor', v:false)
let g:nightflyWinSeparator = get(g:, 'nightflyWinSeparator', 1)

" Load theme style independently for Neovim and Vim.
if has('nvim')
    lua require("nightfly").style()
else
    set termguicolors " Enable Vim true-color support
    call nightfly#Style()
end

set background=dark " nightfly is a dark theme
