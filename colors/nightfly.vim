" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bluz71/vim-nightfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

if has('nvim') && !has('nvim-0.8')
    lua vim.api.nvim_echo({
        \ { "nightfly requires Neovim 0.8 or later.\n", "WarningMsg" },
        \ { "Please use the nightfly 'legacy' branch if you can't upgrade Neovim.\n", "Normal"} },
        \ false, {})
    finish
endif

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='nightfly'

" Enable terminal true-color support.
set termguicolors

let g:nightflyCursorColor = get(g:, 'nightflyCursorColor', v:false)
let g:nightflyItalics = get(g:, 'nightflyItalics', v:true)
let g:nightflyNormalFloat = get(g:, 'nightflyNormalFloat', v:false)
let g:nightflyTerminalColors = get(g:, 'nightflyTerminalColors', v:true)
let g:nightflyTransparent = get(g:, 'nightflyTransparent', v:false)
let g:nightflyUndercurls = get(g:, 'nightflyUndercurls', v:true)
let g:nightflyUnderlineMatchParen = get(g:, 'nightflyUnderlineMatchParen', v:false)
let g:nightflyVirtualTextColor =  get(g:, 'nightflyVirtualTextColor', v:false)
let g:nightflyWinSeparator = get(g:, 'nightflyWinSeparator', 1)

if has('nvim')
    lua require("nightfly").style()
else
    call nightfly#Style()
end

" nightfly is a dark theme. Note, set this at the end for startup performance
" reasons.
set background=dark
