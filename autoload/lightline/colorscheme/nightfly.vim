" nightfly color scheme for lightline (github.com/itchyny/lightline.vim).
"
" URL:     github.com/bluz71/vim-nightfly-guicolors
" License: MIT (https://opensource.org/licenses/MIT)

let s:white      = ['#c3ccdc', 251]
let s:cadet_blue = ['#a1aab8', 247]
let s:slate_blue = ['#2c3043', 236]
let s:dark_blue  = ['#092236', 234]
let s:blue       = ['#82aaff', 111]
let s:purple     = ['#ae81ff', 135]
let s:watermelon = ['#ff5874', 161]

if exists('g:lightline')
    let s:p = {
        \ 'normal': {},
        \ 'inactive': {},
        \ 'insert': {},
        \ 'replace': {},
        \ 'visual': {},
        \ 'tabline': {}}

    let s:p.normal.left     = [[s:dark_blue, s:blue],        [s:white, s:slate_blue]]
    let s:p.normal.middle   = [[s:white,     s:slate_blue]]
    let s:p.normal.right    = [[s:white,     s:slate_blue],  [s:blue, s:slate_blue]]
    let s:p.normal.warning  = [[s:white,     s:slate_blue]]
    let s:p.normal.error    = [[s:blue,      s:slate_blue]]

    let s:p.inactive.left   = [[s:cadet_blue, s:slate_blue], [s:cadet_blue, s:slate_blue]]
    let s:p.inactive.middle = [[s:cadet_blue, s:slate_blue]]
    let s:p.inactive.right  = [[s:cadet_blue, s:slate_blue], [s:cadet_blue, s:slate_blue]]

    let s:p.insert.left     = [[s:dark_blue, s:white],       [s:white, s:slate_blue]]
    let s:p.replace.left    = [[s:dark_blue, s:watermelon],  [s:white, s:slate_blue]]
    let s:p.visual.left     = [[s:dark_blue, s:purple],      [s:white, s:slate_blue]]

    let s:p.tabline.left    = [[s:cadet_blue, s:slate_blue]]
    let s:p.tabline.middle  = [[s:cadet_blue, s:slate_blue]]
    let s:p.tabline.right   = [[s:cadet_blue, s:slate_blue]]
    let s:p.tabline.tabsel  = [[s:blue,       s:slate_blue]]

    let g:lightline#colorscheme#nightfly#palette = lightline#colorscheme#flatten(s:p)
endif
