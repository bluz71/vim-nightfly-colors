" nightfly color scheme for airline (https://github.com/vim-airline/vim-airline).
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

let s:normal1   = [s:dark_blue[0],  s:blue[0],       s:dark_blue[1],  s:blue[1]]
let s:normal2   = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:normal3   = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:inactive1 = [s:cadet_blue[0], s:slate_blue[0], s:cadet_blue[1], s:slate_blue[1]]
let s:inactive2 = [s:cadet_blue[0], s:slate_blue[0], s:cadet_blue[1], s:slate_blue[1]]
let s:inactive3 = [s:cadet_blue[0], s:slate_blue[0], s:cadet_blue[1], s:slate_blue[1]]
let s:insert1   = [s:dark_blue[0],  s:white[0],      s:dark_blue[1],  s:white[1]]
let s:insert2   = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:insert3   = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:replace1  = [s:dark_blue[0],  s:watermelon[0], s:dark_blue[1],  s:watermelon[1]]
let s:replace2  = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:replace3  = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:visual1   = [s:dark_blue[0],  s:purple[0],     s:dark_blue[1],  s:purple[1]]
let s:visual2   = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:visual3   = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:warning   = [s:white[0],      s:slate_blue[0], s:white[1],      s:slate_blue[1]]
let s:error     = [s:blue[0],       s:slate_blue[0], s:blue[1],       s:slate_blue[1]]

if exists('g:airline_theme')
    let g:airline#themes#nightfly#palette                          = {}
    let g:airline#themes#nightfly#palette                          = {}
    let g:airline#themes#nightfly#palette.normal                   = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
    let g:airline#themes#nightfly#palette.normal.airline_warning   = s:warning
    let g:airline#themes#nightfly#palette.normal.airline_error     = s:error
    let g:airline#themes#nightfly#palette.insert                   = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
    let g:airline#themes#nightfly#palette.insert.airline_warning   = s:warning
    let g:airline#themes#nightfly#palette.insert.airline_error     = s:error
    let g:airline#themes#nightfly#palette.replace                  = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
    let g:airline#themes#nightfly#palette.replace.airline_warning  = s:warning
    let g:airline#themes#nightfly#palette.replace.airline_error    = s:error
    let g:airline#themes#nightfly#palette.visual                   = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
    let g:airline#themes#nightfly#palette.visual.airline_warning   = s:warning
    let g:airline#themes#nightfly#palette.visual.airline_error     = s:error
    let g:airline#themes#nightfly#palette.inactive                 = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
    let g:airline#themes#nightfly#palette.inactive.airline_warning = s:warning
    let g:airline#themes#nightfly#palette.inactive.airline_error   = s:error
endif
