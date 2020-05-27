" Dark Vim/Neovim color scheme.
"
" Note: Inspiration taken from: Sarah Drasner's Night Owl theme and my own
" moonfly theme.
"
" URL:     github.com/bluz71/vim-nightfly-guicolors
" License: MIT (https://opensource.org/licenses/MIT)

highlight clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="nightfly"

" Please check that Vim/Neovim is able to run this true-color only theme.
"
" If running in a terminal make sure termguicolors exists and is set.
if has("nvim")
    if has('nvim-0.4') && nvim_list_uis()[0]['ext_termcolors'] && !&termguicolors
        " The nvim_list_uis test indicates terminal Neovim vs GUI Neovim.
        " Note, versions prior to Neovim 0.4 did not set 'ext_termcolors'.
        echomsg "The termguicolors option must be set"
        finish
    endif
else " Vim
    if !has("gui_running") && !exists('&termguicolors')
        echomsg "A modern version of Vim with termguicolors is required"
        finish
    elseif !has("gui_running") && !&termguicolors
        echomsg "The termguicolors option must be set"
        finish
    endif
endif

" * By default do not color the cursor.
" * By default use the nightly color palette in the `:terminal`
" * By default do not underline matching parentheses.
" * By default do use undercurls in GUI versions of Vim, including terminal Vim
"     with termguicolors set.
" * By default do use italics in GUI versions of Vim, including terminal Vim
"     with termguicolors set.
" * By default do not style fzf for display in floating window.
let g:nightflyCursorColor         = get(g:, "nightflyCursorColor", 0)
let g:nightflyTerminalColors      = get(g:, "nightflyTerminalColors", 1)
let g:nightflyUnderlineMatchParen = get(g:, "nightflyUnderlineMatchParen", 0)
let g:nightflyUndercurls          = get(g:, "nightflyUndercurls", 1)
let g:nightflyItalics             = get(g:, "nightflyItalics", 1)
let g:nightflyFloatingFZF         = get(g:, "nightflyFloatingFZF", 0)

" Background and foreground.
let s:black      = "#011627"
let s:white      = "#c3ccdc"
" Variations of blue-grey.
let s:black_blue = "#081e2f"
let s:dark_blue  = "#092236"
let s:deep_blue  = "#0e293f"
let s:slate_blue = "#2c3043"
let s:regal_blue = "#1d3b53"
let s:cyan_blue  = "#296596"
let s:steel_blue = "#4b6479"
let s:grey_blue  = "#7c8f8f"
let s:cadet_blue = "#a1aab8"
let s:white_blue = "#d6deeb"
" Core theme colors.
let s:yellow     = "#e3d18a"
let s:peach      = "#ffcb8b"
let s:tan        = "#ecc48d"
let s:orange     = "#f78c6c"
let s:red        = "#fc514e"
let s:watermelon = "#ff5874"
let s:violet     = "#c792ea"
let s:purple     = "#ae81ff"
let s:blue       = "#82aaff"
let s:turquoise  = "#7fdbca"
let s:emerald    = "#21c7a8"
let s:green      = "#a1cd5e"

" Specify the the colors used by the inbuilt terminal of Neovim and Vim.
if g:nightflyTerminalColors
    if has("nvim")
        let g:terminal_color_0  = "#1d3b53"
        let g:terminal_color_1  = "#fc514e"
        let g:terminal_color_2  = "#a1cd5e"
        let g:terminal_color_3  = "#e3d18a"
        let g:terminal_color_4  = "#82aaff"
        let g:terminal_color_5  = "#c792ea"
        let g:terminal_color_6  = "#7fdbca"
        let g:terminal_color_7  = "#a1aab8"
        let g:terminal_color_8  = "#7c8f8f"
        let g:terminal_color_9  = "#ff5874"
        let g:terminal_color_10 = "#21c7a8"
        let g:terminal_color_11 = "#ecc48d"
        let g:terminal_color_12 = "#82aaff"
        let g:terminal_color_13 = "#ae81ff"
        let g:terminal_color_14 = "#7fdbca"
        let g:terminal_color_15 = "#d6deeb"
    else
        let g:terminal_ansi_colors = [
                    \ "#1d3b53", "#fc514e", "#a1cd5e", "#e3d18a",
                    \ "#82aaff", "#c792ea", "#7fdbca", "#a1aab8",
                    \ "#7c8f8f", "#ff5874", "#21c7a8", "#ecc48d",
                    \ "#82aaff", "#ae81ff", "#7fdbca", "#d6deeb"
                    \]
    endif
endif

" Background and text.
exec "highlight Normal guibg=" . s:black . " guifg=" . s:white

" Color of mode text, -- INSERT --
exec "highlight ModeMsg guifg=" . s:cadet_blue . " gui=none"

" Comments.
if g:nightflyItalics
    exec "highlight Comment guifg=" . s:grey_blue . " gui=italic"
else
    exec "highlight Comment guifg=" . s:grey_blue
endif

" Functions.
exec "highlight Function guifg=" . s:blue

" Strings.
exec "highlight String guifg=" . s:tan

" Booleans.
exec "highlight Boolean guifg=" . s:watermelon

" Identifiers.
exec "highlight Identifier guifg=" . s:turquoise

" Color of titles, e.g in HTML files and Tagbar.
exec "highlight Title guifg=" . s:orange . " gui=none"

" const, static.
exec "highlight StorageClass guifg=" . s:orange

" void, intptr_t.
exec "highlight Type guifg=" . s:emerald . " gui=none"

" Numbers.
exec "highlight Constant guifg=" . s:orange

" Exceptions.
exec "highlight Exception guifg=" . s:watermelon

" ifdef/endif.
exec "highlight PreProc guifg=" . s:watermelon

" Status, split and tab lines.
exec "highlight StatusLine cterm=none guibg=" . s:slate_blue . " guifg=" . s:white . " gui=none"
exec "highlight StatusLineNC cterm=none guibg=" . s:slate_blue . " guifg=" . s:cadet_blue . " gui=none"
exec "highlight VertSplit guibg=" . s:slate_blue . " guifg=" . s:slate_blue
exec "highlight Tabline cterm=none guibg=" . s:slate_blue . " guifg=" . s:cadet_blue . " gui=none"
exec "highlight TablineSel cterm=none guibg=" . s:slate_blue . " guifg=" . s:blue . " gui=none"
exec "highlight TablineFill cterm=none guibg=" . s:slate_blue . " guifg=" . s:slate_blue
exec "highlight StatusLineTerm guibg=" . s:slate_blue . " guifg=" . s:white . " gui=none"
exec "highlight StatusLineTermNC guibg=" . s:slate_blue . " guifg=" . s:cadet_blue . " gui=none"

" case in switch statement.
exec "highlight Label guifg=" . s:turquoise

" end-of-line '$', end-of-file '~'
exec "highlight NonText guifg=" . s:orange . " gui=none"

" sizeof
exec "highlight Operator guifg=" . s:watermelon

" for, while.
exec "highlight Repeat guifg=" . s:violet

" Search.
exec "highlight Search guibg=bg guifg=" . s:orange . " gui=reverse"
exec "highlight IncSearch guibg=bg guifg=" . s:peach

" '\n' sequences.
exec "highlight Special guifg=" . s:watermelon

" if, else.
exec "highlight Statement guifg=" . s:violet . " gui=none"

" Visual selection.
exec "highlight Visual guibg=" . s:regal_blue
exec "highlight VisualNOS guibg=" . s:regal_blue . " guifg=fg gui=none"
exec "highlight VisualInDiff guibg=" . s:regal_blue . " guifg=" . s:white

" Errors, warnings and whitespace-eol.
exec "highlight Error guibg=bg guifg=" . s:red
exec "highlight ErrorMsg guibg=bg guifg=" . s:red
exec "highlight WarningMsg guibg=bg guifg=" . s:orange

" struct, union, enum, typedef.
exec "highlight Structure guifg=" . s:violet

" Auto-text-completion menu.
exec "highlight Pmenu guibg=" . s:deep_blue . " guifg=fg"
exec "highlight PmenuSel guibg=" . s:cyan_blue . " guifg=fg"
exec "highlight PmenuSbar guibg=" . s:deep_blue
exec "highlight PmenuThumb guibg=" . s:steel_blue
exec "highlight WildMenu guibg=" . s:cyan_blue . " guifg=fg"

" Spelling errors.
if g:nightflyUndercurls
    exec "highlight SpellBad guibg=bg gui=undercurl guisp=" . s:red
    exec "highlight SpellCap guibg=bg gui=undercurl guisp=" . s:blue
    exec "highlight SpellRare guibg=bg gui=undercurl guisp=" . s:yellow
    exec "highlight SpellLocal guibg=bg gui=undercurl guisp=" . s:blue
else
    exec "highlight SpellBad guibg=bg guifg=" . s:red . " gui=underline guisp=" . s:red
    exec "highlight SpellCap guibg=bg guifg=" . s:blue . " gui=underline guisp=" . s:blue
    exec "highlight SpellRare guibg=bg guifg=" . s:yellow . " gui=underline guisp=" . s:yellow
    exec "highlight SpellLocal guibg=bg guifg=" . s:blue . " gui=underline guisp=" . s:blue
endif

" Misc.
exec "highlight Question guifg=" . s:green . " gui=none"
exec "highlight MoreMsg guifg=" . s:red . " gui=none"
exec "highlight LineNr guibg=bg guifg=" . s:steel_blue
if g:nightflyCursorColor
    exec "highlight Cursor guifg=bg guibg=" . s:blue
else
    exec "highlight Cursor guifg=bg guibg=" . s:cadet_blue
endif
exec "highlight lCursor guifg=bg guibg=" . s:cadet_blue
exec "highlight CursorLineNr cterm=none guibg=" . s:dark_blue . " guifg=" . s:blue . " gui=none"
exec "highlight CursorColumn guibg=" . s:dark_blue
exec "highlight CursorLine cterm=none guibg=" . s:dark_blue
exec "highlight Folded guibg=" . s:dark_blue . " guifg=". s:green
exec "highlight FoldColumn guibg=" . s:slate_blue . " guifg=" . s:green
exec "highlight SignColumn guibg=bg guifg=" . s:green
exec "highlight Todo guibg=" . s:yellow . " guifg=bg"
exec "highlight SpecialKey guibg=bg guifg=" . s:blue
if g:nightflyUnderlineMatchParen
    exec "highlight MatchParen guibg=bg guifg=" . s:orange . " gui=underline"
else
    exec "highlight MatchParen guibg=bg guifg=" . s:orange
endif
exec "highlight Ignore guifg=" . s:blue
exec "highlight Underlined guifg=" . s:green . " gui=none"
exec "highlight QuickFixLine guibg=" . s:deep_blue
exec "highlight Delimiter guifg=" . s:white

" Neovim only highlight groups.
exec "highlight Whitespace guifg=" . s:deep_blue
exec "highlight TermCursor guibg=" . s:cadet_blue . " guifg=bg gui=none"

" Color column (after line 80).
exec "highlight ColorColumn guibg=" . s:black_blue

" Conceal color, as used by indentLine plugin.
exec "highlight Conceal guibg=bg guifg=" . s:deep_blue

" C/C++
exec "highlight cDefine guifg=" . s:violet
exec "highlight cPreCondit guifg=" . s:violet
exec "highlight cStatement guifg=" . s:violet
exec "highlight cStructure guifg=" . s:orange
exec "highlight cppAccess guifg=" . s:green
exec "highlight cppBoolean guifg=" . s:yellow
exec "highlight cppCast guifg=" . s:turquoise
exec "highlight cppCustomClass guifg=" . s:turquoise
exec "highlight cppExceptions guifg=" . s:green
exec "highlight cppModifier guifg=" . s:violet
exec "highlight cppOperator guifg=" . s:green
exec "highlight cppSTLconstant guifg=" . s:blue
exec "highlight cppSTLnamespace guifg=" . s:purple
exec "highlight cppStatement guifg=" . s:turquoise

" C#
exec "highlight csModifier guifg=" . s:green
exec "highlight csPrecondit guifg=" . s:violet
exec "highlight csXmlTag guifg=" . s:blue

" Clojure
exec "highlight clojureDefine guifg=" . s:violet
exec "highlight clojureKeyword guifg=" . s:turquoise
exec "highlight clojureMacro guifg=" . s:orange
exec "highlight clojureParen guifg=" . s:blue
exec "highlight clojureSpecial guifg=" . s:violet

" CoffeeScript
exec "highlight coffeeConstant guifg=" . s:orange
exec "highlight coffeeGlobal guifg=" . s:watermelon
exec "highlight coffeeKeyword guifg=" . s:orange
exec "highlight coffeeObject guifg=" . s:emerald
exec "highlight coffeeObjAssign guifg=" . s:blue
exec "highlight coffeeSpecialIdent guifg=" . s:turquoise
exec "highlight coffeeSpecialVar guifg=" . s:blue
exec "highlight coffeeStatement guifg=" . s:orange

" Crystal
exec "highlight crystalAccess guifg=" . s:yellow
exec "highlight crystalAttribute guifg=" . s:blue
exec "highlight crystalBlockParameter guifg=" . s:green
exec "highlight crystalClass guifg=" . s:violet
exec "highlight crystalDefine guifg=" . s:violet
exec "highlight crystalExceptional guifg=" . s:orange
exec "highlight crystalInstanceVariable guifg=" . s:turquoise
exec "highlight crystalModule guifg=" . s:blue
exec "highlight crystalPseudoVariable guifg=" . s:green
exec "highlight crystalSharpBang guifg=" . s:cadet_blue
exec "highlight crystalStringDelimiter guifg=" . s:tan

" CSS/SCSS
exec "highlight cssAttr guifg=" . s:turquoise
exec "highlight cssClassName guifg=" . s:blue
exec "highlight cssColor guifg=" . s:turquoise
exec "highlight cssIdentifier guifg=" . s:peach
exec "highlight cssProp guifg=" . s:turquoise
exec "highlight cssValueNumber guifg=" . s:violet
exec "highlight scssSelectorName guifg=" . s:blue

" Dart
exec "highlight dartMetadata guifg=" . s:green
exec "highlight dartStorageClass guifg=" . s:violet
exec "highlight dartTypedef guifg=" . s:violet
exec "highlight dartUserType guifg=" . s:blue

" Elixir
exec "highlight eelixirDelimiter guifg=" . s:watermelon
exec "highlight elixirAtom guifg=" . s:purple
exec "highlight elixirBlockDefinition guifg=" . s:violet
exec "highlight elixirDefine guifg=" . s:violet
exec "highlight elixirDocTest guifg=" . s:cadet_blue
exec "highlight elixirExUnitAssert guifg=" . s:green
exec "highlight elixirExUnitMacro guifg=" . s:blue
exec "highlight elixirKernelFunction guifg=" . s:green
exec "highlight elixirKeyword guifg=" . s:orange
exec "highlight elixirModuleDefine guifg=" . s:blue
exec "highlight elixirPrivateDefine guifg=" . s:violet
exec "highlight elixirStringDelimiter guifg=" . s:tan
exec "highlight elixirVariable guifg=" . s:turquoise

" Elm
exec "highlight elmLetBlockDefinition guifg=" . s:green
exec "highlight elmTopLevelDecl guifg=" . s:orange
exec "highlight elmType guifg=" . s:blue

" Go
exec "highlight goBuiltins guifg=" . s:watermelon
exec "highlight goConditional guifg=" . s:violet
exec "highlight goDeclType guifg=" . s:green
exec "highlight goDirective guifg=" . s:watermelon
exec "highlight goFloats guifg=" . s:orange
exec "highlight goFunction guifg=" . s:blue
exec "highlight goFunctionCall guifg=" . s:blue
exec "highlight goImport guifg=" . s:watermelon
exec "highlight goLabel guifg=" . s:yellow
exec "highlight goMethod guifg=" . s:blue
exec "highlight goMethodCall guifg=" . s:blue
exec "highlight goPackage guifg=" . s:violet
exec "highlight goSignedInts guifg=" . s:emerald
exec "highlight goStruct guifg=" . s:orange
exec "highlight goStructDef guifg=" . s:orange
exec "highlight goUnsignedInts guifg=" . s:orange

" Haskell
exec "highlight haskellDecl guifg=" . s:orange
exec "highlight haskellDeclKeyword guifg=" . s:orange
exec "highlight haskellIdentifier guifg=" . s:turquoise
exec "highlight haskellLet guifg=" . s:blue
exec "highlight haskellOperators guifg=" . s:watermelon
exec "highlight haskellType guifg=" . s:blue
exec "highlight haskellWhere guifg=" . s:violet

" HTML
exec "highlight htmlArg guifg=" . s:blue
exec "highlight htmlLink guifg=" . s:green
exec "highlight htmlEndTag guifg=" . s:purple
exec "highlight htmlTag guifg=" . s:green
exec "highlight htmlTagN guifg=" . s:blue
exec "highlight htmlTagName guifg=" . s:blue
exec "highlight htmlUnderline guifg=" . s:white
if g:nightflyItalics
    exec "highlight htmlBoldItalic guibg=" . s:black . " guifg=" . s:orange . " gui=italic"
    exec "highlight htmlBoldUnderlineItalic guibg=" . s:black . " guifg=" . s:orange . " gui=italic"
    exec "highlight htmlItalic guifg=" . s:cadet_blue . " gui=italic"
    exec "highlight htmlUnderlineItalic guibg=" . s:black . " guifg=" . s:cadet_blue . " gui=italic"
else
    exec "highlight htmlBoldItalic guibg=" . s:black . " guifg=" . s:orange
    exec "highlight htmlBoldUnderlineItalic guibg=" . s:black . " guifg=" . s:orange
    exec "highlight htmlItalic guifg=" . s:cadet_blue " gui=none"
    exec "highlight htmlUnderlineItalic guibg=" . s:black . " guifg=" . s:cadet_blue
endif

" Java
exec "highlight javaAnnotation guifg=" . s:green
exec "highlight javaBraces guifg=" . s:white
exec "highlight javaClassDecl guifg=" . s:peach
exec "highlight javaCommentTitle guifg=" . s:cadet_blue
exec "highlight javaConstant guifg=" . s:blue
exec "highlight javaDebug guifg=" . s:blue
exec "highlight javaMethodDecl guifg=" . s:yellow
exec "highlight javaOperator guifg=" . s:watermelon
exec "highlight javaScopeDecl guifg=" . s:violet
exec "highlight javaStatement guifg=" . s:turquoise

" JavaScript, 'pangloss/vim-javascript' plugin
exec "highlight jsClassDefinition guifg=" . s:emerald
exec "highlight jsClassKeyword guifg=" . s:violet
exec "highlight jsClassMethodType guifg=" . s:emerald
exec "highlight jsExceptions guifg=" . s:emerald
exec "highlight jsFrom guifg=" . s:orange
exec "highlight jsFuncBlock guifg=" . s:turquoise
exec "highlight jsFuncCall guifg=" . s:blue
exec "highlight jsFunction guifg=" . s:violet
exec "highlight jsGlobalObjects guifg=" . s:green
exec "highlight jsModuleAs guifg=" . s:orange
exec "highlight jsObjectKey guifg=" . s:blue
exec "highlight jsObjectValue guifg=" . s:emerald
exec "highlight jsOperator guifg=" . s:violet
exec "highlight jsStorageClass guifg=" . s:green
exec "highlight jsTemplateBraces guifg=" . s:watermelon
exec "highlight jsTemplateExpression guifg=" . s:turquoise
exec "highlight jsThis guifg=" . s:turquoise

" JSX, 'MaxMEllon/vim-jsx-pretty' plugin
exec "highlight jsxAttrib guifg=" . s:green
exec "highlight jsxClosePunct guifg=" . s:purple
exec "highlight jsxComponentName guifg=" . s:blue
exec "highlight jsxOpenPunct guifg=" . s:green
exec "highlight jsxTagName guifg=" . s:blue

" Lua
exec "highlight luaBraces guifg=" . s:watermelon
exec "highlight luaBuiltin guifg=" . s:green
exec "highlight luaFuncCall guifg=" . s:blue
exec "highlight luaSpecialTable guifg=" . s:blue

" Markdown, 'plasticboy/vim-markdown' plugin
highlight link mkdLineBreak NormalNC
exec "highlight mkdDelimiter guifg=" . s:white
exec "highlight mkdListItem guifg=" . s:blue
exec "highlight mkdURL guifg=" . s:purple

" PHP
exec "highlight phpClass guifg=" . s:emerald
exec "highlight phpClasses guifg=" . s:peach
exec "highlight phpFunction guifg=" . s:blue
exec "highlight phpParent guifg=fg"
exec "highlight phpType guifg=" . s:yellow

" PureScript
exec "highlight purescriptClass guifg=" . s:peach
exec "highlight purescriptModuleParams guifg=" . s:orange

" Python
exec "highlight pythonBuiltin guifg=" . s:blue
exec "highlight pythonClassVar guifg=" . s:green
exec "highlight pythonCoding guifg=" . s:blue
exec "highlight pythonImport guifg=" . s:watermelon
exec "highlight pythonOperator guifg=" . s:violet
exec "highlight pythonRun guifg=" . s:blue
exec "highlight pythonStatement guifg=" s:violet

" Ruby
exec "highlight erubyDelimiter guifg=" . s:watermelon
exec "highlight rspecGroupMethods guifg=" . s:blue
exec "highlight rubyAccess guifg=" . s:yellow
exec "highlight rubyAssertion guifg=" . s:blue
exec "highlight rubyAttribute guifg=" . s:blue
exec "highlight rubyBlockParameter guifg=" . s:green
exec "highlight rubyCallback guifg=" . s:blue
exec "highlight rubyClass guifg=" . s:orange
exec "highlight rubyClassName guifg=" . s:emerald
exec "highlight rubyDefine guifg=" . s:violet
exec "highlight rubyEntities guifg=" . s:blue
exec "highlight rubyExceptional guifg=" . s:orange
exec "highlight rubyGemfileMethod guifg=" . s:blue
exec "highlight rubyInstanceVariable guifg=" . s:turquoise
exec "highlight rubyInterpolationDelimiter guifg=" . s:watermelon
exec "highlight rubyMacro guifg=" . s:blue
exec "highlight rubyModule guifg=" . s:blue
exec "highlight rubyModuleName guifg=" . s:emerald
exec "highlight rubyPseudoVariable guifg=" . s:green
exec "highlight rubyResponse guifg=" . s:turquoise
exec "highlight rubyRoute guifg=" . s:blue
exec "highlight rubySharpBang guifg=" . s:cadet_blue
exec "highlight rubyStringDelimiter guifg=" . s:tan
exec "highlight rubySymbol guifg=" . s:purple
augroup NightflyRubyAutocmds
    autocmd!
    " Use different colors when in Ruby and eRuby files for 'rubyConstant'.
    autocmd FileType eruby exec "highlight rubyConstant guifg=" . s:turquoise
    autocmd FileType ruby exec "highlight rubyConstant guifg=" . s:emerald
augroup END

" Rust
exec "highlight rustAssert guifg=" . s:green
exec "highlight rustAttribute guifg=fg"
exec "highlight rustCharacterInvalid guifg=" . s:watermelon
exec "highlight rustCharacterInvalidUnicode guifg=" . s:watermelon
exec "highlight rustCommentBlockDoc guifg=" . s:cadet_blue
exec "highlight rustCommentBlockDocError guifg=" . s:cadet_blue
exec "highlight rustCommentLineDoc guifg=" . s:cadet_blue
exec "highlight rustCommentLineDocError guifg=" . s:cadet_blue
exec "highlight rustConstant guifg=" . s:orange
exec "highlight rustDerive guifg=" . s:green
exec "highlight rustEscapeError guifg=" . s:watermelon
exec "highlight rustFuncName guifg=" . s:blue
exec "highlight rustIdentifier guifg=" . s:blue
exec "highlight rustInvalidBareKeyword guifg=" . s:watermelon
exec "highlight rustKeyword guifg=" . s:violet
exec "highlight rustLifetime guifg=" . s:violet
exec "highlight rustMacro guifg=" . s:green
exec "highlight rustMacroVariable guifg=" . s:violet
exec "highlight rustModPath guifg=" . s:blue
exec "highlight rustObsoleteExternMod guifg=" . s:watermelon
exec "highlight rustObsoleteStorage guifg=" . s:watermelon
exec "highlight rustReservedKeyword guifg=" . s:watermelon
exec "highlight rustSelf guifg=" . s:turquoise
exec "highlight rustSigil guifg=" . s:turquoise
exec "highlight rustStorage guifg=" . s:violet
exec "highlight rustStructure guifg=" . s:violet
exec "highlight rustTrait guifg=" . s:emerald
exec "highlight rustType guifg=" . s:emerald

" Scala
exec "highlight scalaCapitalWord guifg=" . s:blue
exec "highlight scalaCommentCodeBlock guifg=" . s:cadet_blue
exec "highlight scalaInstanceDeclaration guifg=" . s:turquoise
exec "highlight scalaKeywordModifier guifg=" . s:green
exec "highlight scalaSpecial guifg=" . s:turquoise
exec "highlight scalaSpecial guifg=" . s:watermelon

" Shell scripts
exec "highlight shAlias guifg=" . s:turquoise
exec "highlight shCommandSub guifg=fg"
exec "highlight shLoop guifg=" . s:violet
exec "highlight shSetList guifg=" . s:turquoise
exec "highlight shShellVariables guifg=" . s:green
exec "highlight shStatement guifg=fg"
exec "highlight shVariable guifg=" . s:turquoise

" TypeScript (leafgarland/typescript-vim)
exec "highlight typescriptDOMObjects guifg=" . s:blue
exec "highlight typescriptFuncComma guifg=" . s:white
exec "highlight typescriptFuncKeyword guifg=" . s:green
exec "highlight typescriptGlobalObjects guifg=" . s:blue
exec "highlight typescriptIdentifier guifg=" . s:green
exec "highlight typescriptNull guifg=" . s:green
exec "highlight typescriptOpSymbols guifg=" . s:violet
exec "highlight typescriptOperator guifg=" . s:watermelon
exec "highlight typescriptParens guifg=" . s:white
exec "highlight typescriptReserved guifg=" . s:violet
exec "highlight typescriptStorageClass guifg=" . s:green

" TypeScript (HerringtonDarkholme/yats.vim)
exec "highlight typeScriptModule guifg=" . s:blue
exec "highlight typescriptAbstract guifg=" . s:orange
exec "highlight typescriptArrayMethod guifg=" . s:blue
exec "highlight typescriptArrowFuncArg guifg=" . s:white
exec "highlight typescriptBOM guifg=" . s:emerald
exec "highlight typescriptBOMHistoryMethod guifg=" . s:blue
exec "highlight typescriptBOMLocationMethod guifg=" . s:blue
exec "highlight typescriptBOMWindowProp guifg=" . s:green
exec "highlight typescriptBraces guifg=" . s:white
exec "highlight typescriptCall guifg=" . s:white
exec "highlight typescriptClassHeritage guifg=" . s:peach
exec "highlight typescriptClassKeyword guifg=" . s:violet
exec "highlight typescriptClassName guifg=" . s:emerald
exec "highlight typescriptDecorator guifg=" . s:green
exec "highlight typescriptDOMDocMethod guifg=" . s:blue
exec "highlight typescriptDOMEventTargetMethod guifg=" . s:blue
exec "highlight typescriptDOMNodeMethod guifg=" . s:blue
exec "highlight typescriptExceptions guifg=" . s:watermelon
exec "highlight typescriptFuncType guifg=" . s:white
exec "highlight typescriptMathStaticMethod guifg=" . s:blue
exec "highlight typescriptMethodAccessor guifg=" . s:violet
exec "highlight typescriptObjectLabel guifg=" . s:blue
exec "highlight typescriptParamImpl guifg=" . s:white
exec "highlight typescriptStringMethod guifg=" . s:blue
exec "highlight typescriptTry guifg=" . s:watermelon
exec "highlight typescriptVariable guifg=" . s:green
exec "highlight typescriptXHRMethod guifg=" . s:blue

" Vimscript
exec "highlight vimBracket guifg=" . s:blue
exec "highlight vimCommand guifg=" . s:orange
exec "highlight vimCommentTitle guifg=" . s:violet
exec "highlight vimEnvvar guifg=" . s:watermelon
exec "highlight vimFuncName guifg=" . s:blue
exec "highlight vimFuncSID guifg=" . s:blue
exec "highlight vimFunction guifg=" . s:blue
exec "highlight vimNotation guifg=" . s:blue
exec "highlight vimOption guifg=" . s:turquoise
exec "highlight vimParenSep guifg=" . s:white
exec "highlight vimSep guifg=" . s:white
exec "highlight vimUserFunc guifg=" . s:blue

" XML
exec "highlight xmlAttrib guifg=" . s:green
exec "highlight xmlEndTag guifg=" . s:blue
exec "highlight xmlTag guifg=" . s:green
exec "highlight xmlTagName guifg=" . s:blue

" vimdiff/nvim -d
exec "highlight DiffAdd guibg=" . s:emerald . " guifg=bg"
exec "highlight DiffChange guibg=" . s:slate_blue
exec "highlight DiffDelete guibg=" . s:slate_blue . " guifg=" . s:watermelon " gui=none"
exec "highlight DiffText guibg=" . s:blue . " guifg=bg gui=none"

" Git commits
exec "highlight gitCommitBranch guifg=" . s:blue
exec "highlight gitCommitDiscardedFile guifg=" . s:watermelon
exec "highlight gitCommitDiscardedType guifg=" . s:blue
exec "highlight gitCommitHeader guifg=" . s:purple
exec "highlight gitCommitSelectedFile guifg=" . s:emerald
exec "highlight gitCommitSelectedType guifg=" . s:blue
exec "highlight gitCommitUntrackedFile guifg=" . s:watermelon
exec "highlight gitEmail guifg=" . s:blue

" Tagbar plugin
exec "highlight TagbarFoldIcon guifg=" . s:cadet_blue
exec "highlight TagbarVisibilityPublic guifg=" . s:green
exec "highlight TagbarVisibilityProtected guifg=" . s:green
exec "highlight TagbarVisibilityPrivate guifg=" . s:green
exec "highlight TagbarKind guifg=" . s:emerald

" NERDTree plugin
exec "highlight NERDTreeClosable guifg=" . s:green
exec "highlight NERDTreeCWD guifg=" . s:purple
exec "highlight NERDTreeDir guifg=" . s:blue
exec "highlight NERDTreeDirSlash guifg=" . s:watermelon
exec "highlight NERDTreeExecFile guifg=" . s:tan
exec "highlight NERDTreeFile guifg=" . s:white
exec "highlight NERDTreeFlags guifg=" . s:purple
exec "highlight NERDTreeHelp guifg=" . s:cadet_blue
exec "highlight NERDTreeLinkDir guifg=" . s:blue
exec "highlight NERDTreeLinkFile guifg=" . s:blue
exec "highlight NERDTreeLinkTarget guifg=" . s:turquoise
exec "highlight NERDTreeOpenable guifg=" . s:green
exec "highlight NERDTreePart guifg=" . s:regal_blue
exec "highlight NERDTreePartFile guifg=" . s:regal_blue
exec "highlight NERDTreeUp guifg=" . s:blue

" NERDTree Git plugin
exec "highlight NERDTreeGitStatusDirDirty guifg=" . s:tan
exec "highlight NERDTreeGitStatusModified guifg=" . s:watermelon
exec "highlight NERDTreeGitStatusRenamed guifg=" . s:blue
exec "highlight NERDTreeGitStatusStaged guifg=" . s:blue
exec "highlight NERDTreeGitStatusUntracked guifg=" . s:red

" vimfiler plugin
exec "highlight vimfilerClosedFile guifg=" . s:blue
exec "highlight vimfilerMarkedFile guifg=" . s:orange
exec "highlight vimfilerNonMark guifg=" . s:green
exec "highlight vimfilerNormalFile guifg=" . s:white
exec "highlight vimfilerOpenedFile guifg=" . s:blue
exec "highlight vimfilerROFile guifg=" . s:grey_blue

" Neomake plugin
if g:nightflyUndercurls
    exec "highlight NeomakeError guibg=bg gui=undercurl guisp=" . s:red
    exec "highlight NeomakeWarning guibg=bg gui=undercurl guisp=" . s:yellow
    exec "highlight NeomakeInfo guibg=bg gui=undercurl guisp=" . s:blue
    exec "highlight NeomakeMessage guibg=bg gui=undercurl guisp=" . s:white
else
    exec "highlight NeomakeError guibg=bg"
    exec "highlight NeomakeWarning guibg=bg"
    exec "highlight NeomakeInfo guibg=bg"
    exec "highlight NeomakeMessage guibg=bg"
endif
exec "highlight NeomakeErrorSign guibg=bg guifg=" . s:red
exec "highlight NeomakeWarningSign guibg=bg guifg=" . s:yellow
exec "highlight NeomakeInfoSign guibg=bg guifg=" . s:blue
exec "highlight NeomakeMessageSign guibg=bg guifg=" . s:white

" ALE plugin
if g:nightflyUndercurls
     exec "highlight ALEError guibg=bg gui=undercurl guisp=" . s:red
     exec "highlight ALEWarning guibg=bg gui=undercurl guisp=" . s:yellow
     exec "highlight ALEInfo guibg=bg gui=undercurl guisp=" . s:blue
else
    exec "highlight ALEError guibg=bg"
    exec "highlight ALEWarning guibg=bg"
    exec "highlight ALEInfo guibg=bg"
endif
exec "highlight ALEVirtualTextError guifg=" . s:steel_blue
exec "highlight ALEErrorSign guibg=bg guifg=" . s:red
exec "highlight ALEVirtualTextWarning guifg=" . s:steel_blue
exec "highlight ALEWarningSign guibg=bg guifg=" . s:yellow
exec "highlight ALEVirtualTextInfo guifg=" . s:steel_blue
exec "highlight ALEInfoSign guibg=bg guifg=" . s:blue

" GitGutter plugin
exec "highlight GitGutterAdd guibg=bg guifg=" . s:emerald
exec "highlight GitGutterChange guibg=bg guifg=" . s:purple
exec "highlight GitGutterChangeDelete guibg=bg guifg=" . s:orange
exec "highlight GitGutterDelete guibg=bg guifg=" . s:red

" FZF plugin
exec "highlight fzf1 guifg=" . s:watermelon . " guibg=" . s:slate_blue
exec "highlight fzf2 guifg=" . s:blue . " guibg=" . s:slate_blue
exec "highlight fzf3 guifg=" . s:green . " guibg=" . s:slate_blue
exec "highlight fzfNormal guifg=" . s:cadet_blue
exec "highlight fzfFgPlus guifg=" . s:white_blue
exec "highlight fzfBorder guifg=" . s:slate_blue
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'fzfBorder'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

" moonfly-statusline plugin
exec "highlight User1 guibg=" . s:blue       . " guifg=" . s:dark_blue
exec "highlight User2 guibg=" . s:white      . " guifg=" . s:dark_blue
exec "highlight User3 guibg=" . s:purple     . " guifg=" . s:dark_blue
exec "highlight User4 guibg=" . s:watermelon . " guifg=" . s:dark_blue
exec "highlight User5 guibg=" . s:slate_blue . " guifg=" . s:emerald    . " gui=none"
exec "highlight User6 guibg=" . s:slate_blue . " guifg=" . s:white      . " gui=none"
exec "highlight User7 guibg=" . s:slate_blue . " guifg=" . s:blue       . " gui=none"
exec "highlight User8 guibg=" . s:slate_blue . " guifg=" . s:watermelon . " gui=none"

" Misc languages and plugins
exec "highlight bufExplorerHelp guifg=" . s:cadet_blue
exec "highlight bufExplorerSortBy guifg=" . s:cadet_blue
exec "highlight CleverFDefaultLabel guifg=" . s:watermelon
exec "highlight CtrlPMatch guifg=" . s:orange
exec "highlight Directory guifg=" . s:emerald
exec "highlight HighlightedyankRegion guibg=" . s:regal_blue
exec "highlight jsonKeyword guifg=" . s:blue
exec "highlight jsonBoolean guifg=" . s:turquoise
exec "highlight netrwClassify guifg=" . s:watermelon
exec "highlight netrwDir guifg=" . s:blue
exec "highlight netrwExe guifg=" . s:tan
exec "highlight snipLeadingSpaces guibg=bg guifg=fg"
exec "highlight tagName guifg=" . s:turquoise
exec "highlight diffAdded guifg=" . s:green
exec "highlight diffChanged guifg=" . s:watermelon
exec "highlight diffIndexLine guifg=" . s:watermelon
exec "highlight diffLine guifg=" . s:blue
exec "highlight diffRemoved guifg=" . s:red
exec "highlight diffSubname guifg=" . s:blue
if g:nightflyUnderlineMatchParen
    exec "highlight MatchWord gui=underline guisp=" . s:orange
else
    exec "highlight MatchWord guifg=" . s:orange
endif
exec "highlight MatchWordCur guibg=bg"
exec "highlight Cheat40Header guifg=" . s:blue
