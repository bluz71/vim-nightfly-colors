" Background and foreground
let s:black        = '#011627'
let s:white        = '#c3ccdc'
" Variations of midnight-blue
let s:black_blue   = '#081e2f'
let s:dark_blue    = '#092236'
let s:deep_blue    = '#0e293f'
let s:storm_blue   = "#1b2633"
let s:stone_blue   = '#252c3f'
let s:slate_blue   = '#2c3043'
let s:pickle_blue  = '#38507a'
let s:cello_blue   = '#1f4462'
let s:regal_blue   = '#1d3b53'
let s:steel_blue   = '#4b6479'
let s:grey_blue    = '#7c8f8f'
let s:cadet_blue   = '#a1aab8'
let s:ash_blue     = '#acb4c2'
let s:white_blue   = '#d6deeb'
" Core theme colors
let s:red          = '#fc514e'
let s:watermelon   = '#ff5874'
let s:orange       = '#f78c6c'
let s:peach        = '#ffcb8b'
let s:tan          = '#ecc48d'
let s:yellow       = '#e3d18a'
let s:orchid       = '#e39aa6'
let s:lime         = '#85dc85'
let s:green        = '#a1cd5e'
let s:emerald      = '#21c7a8'
let s:turquoise    = '#7fdbca'
let s:malibu       = '#87bcff'
let s:blue         = '#82aaff'
let s:lavender     = "#b0b2f4"
let s:violet       = '#c792ea'
let s:purple       = '#ae81ff'
" Extra colors
let s:cyan_blue    = '#316394'
let s:bay_blue     = '#24567F'
let s:kashmir      = '#4d618e'
let s:plant        = '#2a4e57'

function! nightfly#Style() abort
    "-----------------------------------------------------------------------
    " Custom styling groups
    "-----------------------------------------------------------------------

    exec 'highlight NightflyVisual guibg=' . s:regal_blue
    exec 'highlight NightflyWhite guifg=' . s:white
    exec 'highlight NightflyDeepBlue guifg=' . s:deep_blue
    exec 'highlight NightflyPickleBlue guifg=' . s:pickle_blue
    exec 'highlight NightflyCelloBlue guifg=' . s:cello_blue
    exec 'highlight NightflyRegalBlue guifg=' . s:regal_blue
    exec 'highlight NightflySteelBlue guifg=' . s:steel_blue
    exec 'highlight NightflyGreyBlue guifg=' . s:grey_blue
    exec 'highlight NightflyCadetBlue guifg=' . s:cadet_blue
    exec 'highlight NightflyAshBlue guifg=' . s:ash_blue
    exec 'highlight NightflyWhiteBlue guifg=' . s:white_blue
    exec 'highlight NightflyYellow guifg=' . s:yellow
    exec 'highlight NightflyPeach guifg=' . s:peach
    exec 'highlight NightflyTan guifg=' . s:tan
    exec 'highlight NightflyOrange guifg=' . s:orange
    exec 'highlight NightflyOrchid guifg=' . s:orchid
    exec 'highlight NightflyRed guifg=' . s:red
    exec 'highlight NightflyWatermelon guifg=' . s:watermelon
    exec 'highlight NightflyPurple guifg=' . s:purple
    exec 'highlight NightflyViolet guifg=' . s:violet
    exec 'highlight NightflyLavender guifg=' . s:lavender
    exec 'highlight NightflyBlue guifg=' . s:blue
    exec 'highlight NightflyMalibu guifg=' . s:malibu
    exec 'highlight NightflyTurquoise guifg=' . s:turquoise
    exec 'highlight NightflyEmerald guifg=' . s:emerald
    exec 'highlight NightflyLime guifg=' . s:lime
    exec 'highlight NightflyGreen guifg=' . s:green
    " Statusline helper colors
    exec 'highlight NightflyBlueMode guibg=' . s:blue . ' guifg=' . s:dark_blue
    exec 'highlight NightflyEmeraldMode guibg=' . s:emerald . ' guifg=' . s:dark_blue
    exec 'highlight NightflyPurpleMode guibg=' . s:purple . ' guifg=' . s:dark_blue
    exec 'highlight NightflyWatermelonMode guibg=' . s:watermelon . ' guifg=' . s:dark_blue
    exec 'highlight NightflyTanMode guibg=' . s:tan . ' guifg=' . s:dark_blue
    " Diagnostic helper colors
    exec 'highlight NightflyDiagnosticUndercurlError gui=undercurl guisp=' . s:red
    exec 'highlight NightflyDiagnosticUndercurlWarn gui=undercurl guisp=' . s:yellow
    exec 'highlight NightflyDiagnosticUndercurlInfo gui=undercurl guisp=' . s:malibu
    exec 'highlight NightflyDiagnosticUnderlineError gui=underline guisp=' . s:red
    exec 'highlight NightflyDiagnosticUnderlineWarn gui=underline guisp=' . s:yellow
    exec 'highlight NightflyDiagnosticUnderlineInfo gui=underline guisp=' . s:malibu
    if g:nightflyVirtualTextColor
        exec 'highlight NightflyDiagnosticVirtualTextError guibg=' . s:dark_blue . ' guifg=' . s:red
        exec 'highlight NightflyDiagnosticVirtualTextWarn guibg=' . s:dark_blue . ' guifg=' . s:yellow
        exec 'highlight NightflyDiagnosticVirtualTextInfo guibg=' . s:dark_blue . ' guifg=' . s:malibu
        exec 'highlight NightflyDiagnosticVirtualTextHint guibg=' . s:dark_blue . ' guifg=' . s:turquoise
    else
        highlight! link NightflyDiagnosticVirtualTextError NightflySteelBlue
        highlight! link NightflyDiagnosticVirtualTextWarn NightflySteelBlue
        highlight! link NightflyDiagnosticVirtualTextInfo NightflySteelBlue
        highlight! link NightflyDiagnosticVirtualTextHint NightflySteelBlue
    endif

    "-----------------------------------------------------------------------
    " Standard styling
    "-----------------------------------------------------------------------

    " Specify the colors used by the inbuilt terminal
    if g:nightflyTerminalColors
        let g:terminal_ansi_colors = [
                    \ s:regal_blue, s:red, s:green, s:yellow,
                    \ s:blue, s:violet, s:turquoise, s:white,
                    \ s:grey_blue, s:watermelon, s:emerald, s:tan,
                    \ s:blue, s:purple, s:turquoise, s:white_blue
                    \]
    endif

    " Background and text
    if g:nightflyTransparent
        exec 'highlight Normal guibg=NONE' . ' guifg=' . s:white
    else
        exec 'highlight Normal guibg=' . s:black . ' guifg=' . s:white
    endif

    " Color of mode text, -- INSERT --
    exec 'highlight ModeMsg guifg=' . s:cadet_blue . ' gui=none'

    " Comments
    if g:nightflyItalics
        exec 'highlight Comment guifg=' . s:grey_blue . ' gui=italic'
    else
        exec 'highlight Comment guifg=' . s:grey_blue
    endif

    " Functions
    highlight! link Function NightflyBlue

    " Strings
    highlight! link String NightflyTan

    " Booleans
    highlight! link Boolean NightflyWatermelon

    " Identifiers
    highlight! link Identifier NightflyTurquoise

    " Color of titles
    exec 'highlight Title guifg=' . s:orange . ' gui=none'

    " const, static
    highlight! link StorageClass NightflyViolet

    " void, intptr_t
    exec 'highlight Type guifg=' . s:emerald . ' gui=none'

    " Numbers
    highlight! link Constant NightflyOrange

    " Character constants
    highlight! link Character NightflyPurple

    " Exceptions
    highlight! link Exception NightflyWatermelon

    " ifdef/endif
    highlight! link PreProc NightflyWatermelon

    " case in switch statement
    highlight! link Label NightflyTurquoise

    " end-of-line '$', end-of-file '~'
    exec 'highlight NonText guifg=' . s:steel_blue . ' gui=none'

    " sizeof
    highlight! link Operator NightflyWatermelon

    " for, while
    highlight! link Repeat NightflyViolet

    " Search
    exec 'highlight Search cterm=none guibg=' . s:pickle_blue . ' guifg=' . s:white_blue . ' gui=none'
    exec 'highlight CurSearch cterm=none guibg=' . s:orange . ' guifg=' . s:black . ' gui=none'
    exec 'highlight IncSearch cterm=none guibg=' . s:peach . ' guifg=' . s:black . ' gui=none'

    " '\n' sequences
    highlight! link Special NightflyWatermelon

    " if, else
    exec 'highlight Statement guifg=' . s:violet . ' gui=none'

    " struct, union, enum, typedef
    highlight! link Structure NightflyBlue

    " Statusline, splits and tab lines
    if g:nightflyTransparent
        exec 'highlight StatusLine cterm=none guibg=' . s:black_blue . ' guifg=' . s:white . ' gui=none'
        exec 'highlight StatusLineNC cterm=none guibg=' . s:black_blue . ' guifg=' . s:cadet_blue . ' gui=none'
        exec 'highlight StatusLineTerm cterm=none guibg=' . s:black_blue . ' guifg=' . s:white . ' gui=none'
        exec 'highlight StatusLineTermNC cterm=none guibg=' . s:black_blue . ' guifg=' . s:cadet_blue . ' gui=none'
    else
        exec 'highlight StatusLine cterm=none guibg=' . s:stone_blue . ' guifg=' . s:white . ' gui=none'
        exec 'highlight StatusLineNC cterm=none guibg=' . s:stone_blue . ' guifg=' . s:cadet_blue . ' gui=none'
        exec 'highlight StatusLineTerm cterm=none guibg=' . s:stone_blue . ' guifg=' . s:white . ' gui=none'
        exec 'highlight StatusLineTermNC cterm=none guibg=' . s:stone_blue . ' guifg=' . s:cadet_blue . ' gui=none'
    endif
    exec 'highlight Tabline cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
    exec 'highlight TablineSel cterm=none guibg=' . s:black_blue . ' guifg=' . s:blue . ' gui=none'
    exec 'highlight TablineSelSymbol cterm=none guibg=' . s:black_blue . ' guifg=' . s:emerald . ' gui=none'
    if g:nightflyTransparent
        exec 'highlight TablineFill cterm=none guifg=' . s:slate_blue . ' gui=none'
    else
        exec 'highlight TablineFill cterm=none guibg=' . s:storm_blue . ' guifg=' . s:slate_blue . ' gui=none'
    endif
    if g:nightflyWinSeparator == 0
        exec 'highlight VertSplit cterm=none guibg=' . s:black . ' guifg=' . s:black . ' gui=none'
    elseif g:nightflyWinSeparator == 1
        exec 'highlight VertSplit cterm=none guibg=' . s:stone_blue . ' guifg=' . s:stone_blue . ' gui=none'
    else
        exec 'highlight VertSplit guibg=NONE guifg=' . s:stone_blue . ' gui=none'
    end

    " Visual selection
    highlight! link Visual NightflyVisual
    exec 'highlight VisualNOS guibg=' . s:regal_blue . ' guifg=fg gui=none'

    " Errors, warnings and whitespace-eol
    exec 'highlight Error guibg=bg guifg=' . s:red
    exec 'highlight ErrorMsg guibg=bg guifg=' . s:red
    exec 'highlight WarningMsg guibg=bg guifg=' . s:orange

    " Auto-text-completion menu
    exec 'highlight Pmenu guibg=' . s:deep_blue . ' guifg=fg'
    exec 'highlight PmenuSel guibg=' . s:cyan_blue . ' guifg=' . s:white_blue
    exec 'highlight PmenuSbar guibg=' . s:deep_blue
    exec 'highlight PmenuThumb guibg=' . s:steel_blue
    exec 'highlight WildMenu guibg=' . s:cyan_blue . ' guifg=' . s:white_blue

    " Spelling errors
    if g:nightflyUndercurls
        exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:red
        exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:yellow
        exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:green
        exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:malibu
    else
        exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:red . ' gui=underline guisp=' . s:red
        exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:yellow . ' gui=underline guisp=' . s:yellow
        exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:green . ' gui=underline guisp=' . s:green
        exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:malibu . ' gui=underline guisp=' . s:malibu
    endif

    " Misc
    exec 'highlight Question guifg=' . s:green . ' gui=none'
    exec 'highlight MoreMsg guifg=' . s:red . ' gui=none'
    exec 'highlight LineNr guibg=bg guifg=' . s:steel_blue . ' gui=none'
    if g:nightflyCursorColor
        exec 'highlight Cursor guifg=bg guibg=' . s:blue
    else
        exec 'highlight Cursor guifg=bg guibg=' . s:cadet_blue
    endif
    exec 'highlight lCursor guifg=bg guibg=' . s:cadet_blue
    exec 'highlight CursorLineNr cterm=none guibg=' . s:dark_blue . ' guifg=' . s:blue . ' gui=none'
    exec 'highlight CursorColumn guibg=' . s:dark_blue
    exec 'highlight CursorLine cterm=none guibg=' . s:dark_blue
    highlight! link CursorLineSign CursorLine
    exec 'highlight Folded guibg=' . s:dark_blue . ' guifg='. s:lime
    exec 'highlight FoldColumn guibg=' . s:slate_blue . ' guifg=' . s:lime
    exec 'highlight SignColumn guibg=bg guifg=' . s:green
    exec 'highlight Todo guibg=' . s:deep_blue . ' guifg=' . s:yellow
    exec 'highlight SpecialKey guibg=bg guifg=' . s:blue
    if g:nightflyUnderlineMatchParen
        exec 'highlight MatchParen guibg=bg gui=underline'
    else
        highlight! link MatchParen NightflyVisual
    endif
    highlight! link Ignore NightflyBlue
    exec 'highlight Underlined guifg=' . s:green . ' gui=none'
    exec 'highlight QuickFixLine guibg=' . s:deep_blue
    highlight! link Delimiter NightflyWhite
    highlight! link qfFileName NightflyEmerald

    " Color column (after line 80)
    exec 'highlight ColorColumn guibg=' . s:black_blue

    " Conceal color
    exec 'highlight Conceal guibg=NONE guifg=' . s:ash_blue

    " vimdiff/nvim -d
    exec 'highlight DiffAdd guibg=' . s:plant
    exec 'highlight DiffChange guibg=' . s:slate_blue
    exec 'highlight DiffDelete guibg=' . s:slate_blue . ' guifg=' . s:steel_blue . ' gui=none'
    exec 'highlight DiffText guibg=' . s:kashmir

    "-----------------------------------------------------------------------
    " Language styling
    "-----------------------------------------------------------------------

    " C
    highlight! link cTypedef NightflyViolet

    " C++
    highlight! link cppAccess NightflyViolet
    highlight! link cppCast NightflyTurquoise
    highlight! link cppCustomClass NightflyTurquoise
    highlight! link cppExceptions NightflyGreen
    highlight! link cppModifier NightflyViolet
    highlight! link cppOperator NightflyGreen
    highlight! link cppSTLconstant NightflyBlue
    highlight! link cppSTLnamespace NightflyTurquoise
    highlight! link cppStatement NightflyTurquoise
    highlight! link cppStructure NightflyViolet

    " C#
    highlight! link csModifier NightflyViolet
    highlight! link csStorage NightflyViolet
    highlight! link csXmlTag NightflyBlue

    " Clojure
    highlight! link clojureDefine NightflyViolet
    highlight! link clojureKeyword NightflyPurple
    highlight! link clojureSpecial NightflyTurquoise

    " CoffeeScript
    highlight! link coffeeConstant NightflyEmerald
    highlight! link coffeeGlobal NightflyTurquoise
    highlight! link coffeeObject NightflyEmerald
    highlight! link coffeeObjAssign NightflyBlue
    highlight! link coffeeSpecialIdent NightflyTurquoise
    highlight! link coffeeSpecialVar NightflyBlue

    " Crystal
    highlight! link crystalDefine NightflyViolet
    highlight! link crystalPseudoVariable NightflyGreen

    " CSS/SCSS
    highlight! link cssAtRule NightflyViolet
    highlight! link cssAttr NightflyGreen
    highlight! link cssBraces NightflyWhite
    highlight! link cssClassName NightflyEmerald
    highlight! link cssClassNameDot NightflyViolet
    highlight! link cssColor NightflyGreen
    highlight! link cssIdentifier NightflyEmerald
    highlight! link cssProp NightflyLavender
    highlight! link cssTagName NightflyBlue
    highlight! link cssUnitDecorators NightflyTan
    highlight! link sassId NightflyEmerald
    highlight! link sassIdChar NightflyWatermelon
    highlight! link sassMedia NightflyViolet
    highlight! link scssSelectorName NightflyBlue

    " CSV
    highlight! link csvCol0 NightflyRed
    highlight! link csvCol1 NightflyOrange
    highlight! link csvCol2 NightflyYellow
    highlight! link csvCol3 NightflyGreen
    highlight! link csvCol4 NightflyTurquoise
    highlight! link csvCol5 NightflyBlue
    highlight! link csvCol6 NightflyPurple
    highlight! link csvCol7 NightflyViolet
    highlight! link csvCol8 NightflyLavender

    " Dart
    highlight! link dartTypedef NightflyViolet

    " Elixir
    highlight! link eelixirDelimiter NightflyWatermelon
    highlight! link elixirAtom NightflyPurple
    highlight! link elixirBlockDefinition NightflyViolet
    highlight! link elixirDefine NightflyViolet
    highlight! link elixirDocTest NightflyCadetBlue
    highlight! link elixirExUnitAssert NightflyGreen
    highlight! link elixirExUnitMacro NightflyBlue
    highlight! link elixirKernelFunction NightflyGreen
    highlight! link elixirKeyword NightflyViolet
    highlight! link elixirModuleDefine NightflyViolet
    highlight! link elixirPrivateDefine NightflyViolet
    highlight! link elixirStringDelimiter NightflyTan
    highlight! link elixirVariable NightflyTurquoise

    " Elm
    highlight! link elmLetBlockDefinition NightflyGreen
    highlight! link elmTopLevelDecl NightflyOrange
    highlight! link elmTypedef NightflyViolet

    " Go
    highlight! link goBuiltins NightflyBlue
    highlight! link goConditional NightflyViolet
    highlight! link goDeclType NightflyGreen
    highlight! link goDirective NightflyWatermelon
    highlight! link goFloats NightflyOrange
    highlight! link goFunction NightflyBlue
    highlight! link goFunctionCall NightflyBlue
    highlight! link goImport NightflyWatermelon
    highlight! link goLabel NightflyYellow
    highlight! link goMethod NightflyBlue
    highlight! link goMethodCall NightflyBlue
    highlight! link goPackage NightflyViolet
    highlight! link goSignedInts NightflyEmerald
    highlight! link goStruct NightflyOrange
    highlight! link goStructDef NightflyOrange
    highlight! link goUnsignedInts NightflyOrange

    " Haskell
    highlight! link haskellDecl NightflyViolet
    highlight! link haskellDeclKeyword NightflyViolet
    highlight! link haskellLet NightflyBlue
    highlight! link haskellOperators NightflyCranberry
    highlight! link haskellWhere NightflyViolet

    " Help
    highlight! link helpCommand NightflyOrchid
    highlight! link helpExample NightflyGreen
    highlight! link helpHeadline NightflyBlue
    highlight! link helpHyperTextEntry NightflyTurquoise
    highlight! link helpSectionDelim NightflyBlue

    " HTML
    highlight! link htmlArg NightflyTurquoise
    highlight! link htmlLink NightflyGreen
    highlight! link htmlEndTag NightflyPurple
    highlight! link htmlH1 NightflyWatermelon
    highlight! link htmlH2 NightflyOrange
    highlight! link htmlSpecialTagName NightflyBlue
    highlight! link htmlTag NightflyGreen
    highlight! link htmlTagN NightflyBlue
    highlight! link htmlTagName NightflyBlue
    highlight! link htmlTitle NightflyViolet
    highlight! link htmlUnderline NightflyWhite
    if g:nightflyItalics
        exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:orange . ' gui=italic'
        exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:orange . ' gui=italic'
        exec 'highlight htmlItalic guifg=' . s:cadet_blue . ' gui=italic'
        exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:cadet_blue . ' gui=italic'
    else
        exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:orange
        exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:orange
        exec 'highlight htmlItalic guifg=' . s:cadet_blue ' gui=none'
        exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:cadet_blue
    endif

    " Java
    highlight! link javaAnnotation NightflyGreen
    highlight! link javaBraces NightflyWhite
    highlight! link javaCommentTitle NightflyCadetBlue
    highlight! link javaConstant NightflyBlue
    highlight! link javaDebug NightflyBlue
    highlight! link javaMethodDecl NightflyYellow
    highlight! link javaOperator NightflyWatermelon
    highlight! link javaScopeDecl NightflyViolet
    highlight! link javaStatement NightflyTurquoise

    " JavaScript, 'pangloss/vim-javascript' plugin
    highlight! link jsClassDefinition NightflyEmerald
    highlight! link jsClassKeyword NightflyViolet
    highlight! link jsClassMethodType NightflyEmerald
    highlight! link jsExceptions NightflyEmerald
    highlight! link jsFrom NightflyCranberry
    highlight! link jsFuncBlock NightflyTurquoise
    highlight! link jsFuncCall NightflyBlue
    highlight! link jsFunction NightflyViolet
    highlight! link jsGlobalObjects NightflyGreen
    highlight! link jsModuleAs NightflyOrange
    highlight! link jsObjectKey NightflyLavender
    highlight! link jsObjectValue NightflyEmerald
    highlight! link jsOperator NightflyViolet
    highlight! link jsStorageClass NightflyViolet
    highlight! link jsTemplateBraces NightflyWatermelon
    highlight! link jsTemplateExpression NightflyTurquoise
    highlight! link jsThis NightflyTurquoise

    " JSX, 'MaxMEllon/vim-jsx-pretty' plugin
    highlight! link jsxAttrib NightflyTurquoise
    highlight! link jsxClosePunct NightflyPurple
    highlight! link jsxComponentName NightflyEmerald
    highlight! link jsxOpenPunct NightflyGreen
    highlight! link jsxTagName NightflyBlue

    " LaTeX
    highlight! link texBeginEndName NightflyEmerald
    highlight! link texCite NightflyGreen
    highlight! link texDocType NightflyWatermelon
    highlight! link texDocTypeArgs NightflyOrchid
    highlight! link texInputFile String
    highlight! link texMathZoneC NightflyMalibu
    highlight! link texMathZoneX NightflyMalibu
    highlight! link texRefZone NightflyGreen
    highlight! link texSection NightflyLavender
    highlight! link texTypeStyle NightflyYellow
    highlight! link texZone NightflyLavender

    " Lua
    highlight! link luaBraces NightflyEmerald
    highlight! link luaBuiltin NightflyGreen
    highlight! link luaConstant NightflyWatermelon
    highlight! link luaFuncCall NightflyBlue
    highlight! link luaFuncKeyword NightflyViolet
    highlight! link luaLocal NightflyViolet
    highlight! link luaSpecialTable NightflyBlue
    highlight! link luaSpecialValue NightflyBlue

    " Man
    highlight! link manHeader NightflyEmerald
    highlight! link manOptionDesc NightflyOrchid
    highlight! link manReference NightflyGreen
    highlight! link manSectionHeading NightflyBlue
    highlight! link manSubHeading NightflyTurquoise

    " Markdown, 'tpope/vim-markdown' plugin
    highlight! link markdownBold NightflyPeach
    highlight! link markdownCode NightflyTan
    highlight! link markdownCodeDelimiter NightflyTan
    highlight! link markdownError NormalNC
    highlight! link markdownH1 NightflyEmerald
    highlight! link markdownH2 NightflyBlue
    highlight! link markdownH3 NightflyTurquoise
    highlight! link markdownH3Delimiter NightflyWatermelon
    highlight! link markdownH4 NightflyOrange
    highlight! link markdownH4Delimiter NightflyWatermelon
    highlight! link markdownH5 NightflyMalibu
    highlight! link markdownH5Delimiter NightflyWatermelon
    highlight! link markdownH6 NightflyViolet
    highlight! link markdownH6Delimiter NightflyWatermelon
    highlight! link markdownHeadingRule NightflyWatermelon
    if g:nightflyItalics
        exec 'highlight markdownItalic guifg=' . s:orchid . ' gui=italic'
    else
        highlight! link markdownItalic NightflyOrchid
    endif
    exec 'highlight markdownUrl guifg=' . s:purple. ' cterm=underline gui=underline guisp=' . s:grey_blue

    " Markdown, 'plasticboy/vim-markdown' plugin
    highlight! link mkdDelimiter NightflyWhite
    highlight! link mkdLineBreak NormalNC
    highlight! link mkdListItem NightflyBlue
    highlight! link mkdURL markdownUrl

    " PHP
    highlight! link phpClass NightflyEmerald
    highlight! link phpClasses NightflyBlue
    highlight! link phpFunction NightflyBlue
    highlight! link phpParent NightflyWhite
    highlight! link phpType NightflyViolet

    " Python
    highlight! link pythonBuiltin NightflyBlue
    highlight! link pythonClass NightflyEmerald
    highlight! link pythonClassVar NightflyGreen
    highlight! link pythonCoding NightflyBlue
    highlight! link pythonImport NightflyWatermelon
    highlight! link pythonOperator NightflyViolet
    highlight! link pythonRun NightflyBlue
    highlight! link pythonStatement NightflyViolet

    " Ruby
    highlight! link rubyAccess NightflyViolet
    highlight! link rubyAssertion NightflyBlue
    highlight! link rubyAttribute NightflyBlue
    highlight! link rubyBlockParameter NightflyGreen
    highlight! link rubyCallback NightflyBlue
    highlight! link rubyDefine NightflyViolet
    highlight! link rubyEntities NightflyBlue
    highlight! link rubyExceptional NightflyOrange
    highlight! link rubyGemfileMethod NightflyBlue
    highlight! link rubyInstanceVariable NightflyTurquoise
    highlight! link rubyInterpolationDelimiter NightflyWatermelon
    highlight! link rubyMacro NightflyBlue
    highlight! link rubyModule NightflyBlue
    highlight! link rubyModuleName NightflyEmerald
    highlight! link rubyPseudoVariable NightflyGreen
    highlight! link rubyResponse NightflyBlue
    highlight! link rubyRoute NightflyBlue
    highlight! link rubySharpBang NightflyCadetBlue
    highlight! link rubyStringDelimiter NightflyTan
    highlight! link rubySymbol NightflyPurple

    " Rust
    highlight! link rustAssert NightflyTurquoise
    highlight! link rustAttribute NightflyWhite
    highlight! link rustCharacterInvalid NightflyWatermelon
    highlight! link rustCharacterInvalidUnicode NightflyWatermelon
    highlight! link rustCommentBlockDoc NightflyCadetBlue
    highlight! link rustCommentBlockDocError NightflyCadetBlue
    highlight! link rustCommentLineDoc NightflyCadetBlue
    highlight! link rustCommentLineDocError NightflyCadetBlue
    highlight! link rustConstant NightflyOrange
    highlight! link rustDerive NightflyGreen
    highlight! link rustEscapeError NightflyWatermelon
    highlight! link rustFuncName NightflyBlue
    highlight! link rustIdentifier NightflyBlue
    highlight! link rustInvalidBareKeyword NightflyWatermelon
    highlight! link rustKeyword NightflyViolet
    highlight! link rustLifetime NightflyViolet
    highlight! link rustMacro NightflyTurquoise
    highlight! link rustMacroVariable NightflyViolet
    highlight! link rustModPath NightflyTurquoise
    highlight! link rustModPathSep NightflyWatermelon
    highlight! link rustObsoleteExternMod NightflyWatermelon
    highlight! link rustObsoleteStorage NightflyWatermelon
    highlight! link rustReservedKeyword NightflyWatermelon
    highlight! link rustSelf NightflyGreen
    highlight! link rustSigil NightflyTurquoise
    highlight! link rustStorage NightflyViolet
    highlight! link rustStructure NightflyViolet
    highlight! link rustTrait NightflyEmerald
    highlight! link rustType NightflyEmerald

    " Scala (note, link highlighting does not work, I don't know why)
    exec 'highlight scalaCapitalWord guifg=' . s:emerald
    exec 'highlight scalaCommentCodeBlock guifg=' . s:cadet_blue
    exec 'highlight scalaInstanceDeclaration guifg=' . s:emerald
    exec 'highlight scalaKeywordModifier guifg=' . s:violet
    exec 'highlight scalaSpecial guifg=' . s:watermelon

    " Shell
    highlight! link shAlias NightflyTurquoise
    highlight! link shCommandSub NightflyWhite
    highlight! link shCtrlSeq NightflyTan
    highlight! link shLoop NightflyViolet
    highlight! link shRange NightflyWhite
    highlight! link shSetList NightflyTurquoise
    highlight! link shShellVariables NightflyTurquoise
    highlight! link shVariable NightflyTurquoise

    " TypeScript (leafgarland/typescript-vim)
    highlight! link typescriptDOMObjects NightflyBlue
    highlight! link typescriptFuncComma NightflyWhite
    highlight! link typescriptFuncKeyword NightflyGreen
    highlight! link typescriptGlobalObjects NightflyBlue
    highlight! link typescriptIdentifier NightflyGreen
    highlight! link typescriptNull NightflyGreen
    highlight! link typescriptOpSymbols NightflyViolet
    highlight! link typescriptOperator NightflyWatermelon
    highlight! link typescriptParens NightflyWhite
    highlight! link typescriptReserved NightflyViolet
    highlight! link typescriptStorageClass NightflyViolet

    " TypeScript (HerringtonDarkholme/yats.vim)
    highlight! link typeScriptModule NightflyBlue
    highlight! link typescriptAbstract NightflyOrange
    highlight! link typescriptArrayMethod NightflyBlue
    highlight! link typescriptArrowFuncArg NightflyWhite
    highlight! link typescriptBOM NightflyEmerald
    highlight! link typescriptBOMHistoryMethod NightflyBlue
    highlight! link typescriptBOMLocationMethod NightflyBlue
    highlight! link typescriptBOMWindowProp NightflyGreen
    highlight! link typescriptBraces NightflyWhite
    highlight! link typescriptCall NightflyWhite
    highlight! link typescriptClassHeritage NightflyPeach
    highlight! link typescriptClassKeyword NightflyViolet
    highlight! link typescriptClassName NightflyEmerald
    highlight! link typescriptDecorator NightflyGreen
    highlight! link typescriptDOMDocMethod NightflyBlue
    highlight! link typescriptDOMEventTargetMethod NightflyBlue
    highlight! link typescriptDOMNodeMethod NightflyBlue
    highlight! link typescriptExceptions NightflyWatermelon
    highlight! link typescriptFuncType NightflyWhite
    highlight! link typescriptMathStaticMethod NightflyBlue
    highlight! link typescriptMethodAccessor NightflyViolet
    highlight! link typescriptObjectLabel NightflyBlue
    highlight! link typescriptParamImpl NightflyWhite
    highlight! link typescriptStringMethod NightflyBlue
    highlight! link typescriptTry NightflyWatermelon
    highlight! link typescriptTypeReference NightflyEmerald
    highlight! link typescriptVariable NightflyGreen
    highlight! link typescriptXHRMethod NightflyBlue

    " Vimscript
    highlight! link vimBracket NightflyBlue
    highlight! link vimCommand NightflyViolet
    highlight! link vimCommentTitle NightflyViolet
    highlight! link vimEnvvar NightflyWatermelon
    highlight! link vimFuncName NightflyBlue
    highlight! link vimFuncSID NightflyBlue
    highlight! link vimFunction NightflyBlue
    highlight! link vimHighlight NightflyBlue
    highlight! link vimNotFunc NightflyViolet
    highlight! link vimNotation NightflyBlue
    highlight! link vimOption NightflyEmerald
    highlight! link vimParenSep NightflyWhite
    highlight! link vimSep NightflyWhite
    highlight! link vimUserFunc NightflyBlue

    " XML
    highlight! link xmlAttrib NightflyLime
    highlight! link xmlEndTag NightflyBlue
    highlight! link xmlTag NightflyGreen
    highlight! link xmlTagName NightflyBlue

    " Zig
    highlight! link zigVarDecl NightflyViolet
    highlight! link zigNull NightflyGreen

    "-----------------------------------------------------------------------
    " Plugin styling
    "-----------------------------------------------------------------------

    " ALE plugin
    if g:nightflyUndercurls
        highlight! link ALEError NightflyDiagnosticUndercurlError
        highlight! link ALEWarning NightflyDiagnosticUndercurlWarn
        highlight! link ALEInfo NightflyDiagnosticUndercurlInfo
    else
        highlight! link ALEError NightflyDiagnosticUnderlineError
        highlight! link ALEWarning NightflyDiagnosticUnderlineWarn
        highlight! link ALEInfo NightflyDiagnosticUnderlineInfo
    endif
    highlight! link ALEErrorSign NightflyRed
    highlight! link ALEWarningSign NightflyYellow
    highlight! link ALEInfoSign NightflyMalibu
    highlight! link ALEVirtualTextError NightflyDiagnosticVirtualTextError
    highlight! link ALEVirtualTextWarning NightflyDiagnosticVirtualTextWarn
    highlight! link ALEVirtualTextInfo NightflyDiagnosticVirtualTextInfo

    " Coc
    highlight! link CocSemTypeBuiltin NightflyWatermelon
    highlight! link CocSemTypeClass NightflyEmerald
    highlight! link CocSemTypeEnumMember NightflyTurquoise
    highlight! link CocSemTypeNamespace NightflyTurquoise
    highlight! link CocSemTypeParameter NightflyOrchid
    highlight! link CocSemTypeProperty NightflyLavender
    highlight! link CocSemTypeRegexp NightflyTurquoise
    highlight! link CocSemTypeStruct NightflyEmerald
    highlight! link CocSemTypeTypeParameter NightflyOrchid
    highlight! link CocUnusedHighlight NightflyAshBlue
    exec 'highlight CocInlayHint guibg=' . s:dark_blue . ' guifg=' . s:grey_blue
    "   Coc virtual text
    highlight! link CocErrorVirtualText NightflyDiagnosticVirtualTextError
    highlight! link CocWarningVirtualText NightflyDiagnosticVirtualTextWarn
    highlight! link CocInfoVirtualText NightflyDiagnosticVirtualTextInfo
    highlight! link CocHintVirtualText NightflyDiagnosticVirtualTextHint

    " fern.vim plugin
    highlight! link FernBranchSymbol NightflyGreyBlue
    highlight! link FernLeafSymbol NightflyBlue
    highlight! link FernLeaderSymbol NightflyCelloBlue
    highlight! link FernBranchText NightflyBlue
    highlight! link FernMarkedLine NightflyVisual
    highlight! link FernMarkedText NightflyWatermelon
    highlight! link FernRootSymbol NightflyPurple
    highlight! link FernRootText NightflyPurple

    " fern-git-status.vim plugin
    highlight! link FernGitStatusBracket NightflyGreyBlue
    highlight! link FernGitStatusIndex NightflyEmerald
    highlight! link FernGitStatusWorktree NightflyWatermelon

    " Git commits
    highlight! link gitCommitBranch NightflyBlue
    highlight! link gitCommitDiscardedFile NightflyWatermelon
    highlight! link gitCommitDiscardedType NightflyBlue
    highlight! link gitCommitHeader NightflyPurple
    highlight! link gitCommitSelectedFile NightflyEmerald
    highlight! link gitCommitSelectedType NightflyBlue
    highlight! link gitCommitUntrackedFile NightflyWatermelon
    highlight! link gitEmail NightflyBlue

    " Git commit diffs
    highlight! link diffAdded NightflyGreen
    highlight! link diffChanged NightflyWatermelon
    highlight! link diffIndexLine NightflyWatermelon
    highlight! link diffLine NightflyBlue
    highlight! link diffRemoved NightflyRed
    highlight! link diffSubname NightflyBlue

    " GitGutter plugin
    highlight! link GitGutterAdd NightflyEmerald
    highlight! link GitGutterChange NightflyMalibu
    highlight! link GitGutterChangeDelete NightflyOrange
    highlight! link GitGutterDelete NightflyRed

    " Glyph palette
    highlight! link GlyphPalette1 NightflyWatermelon
    highlight! link GlyphPalette2 NightflyEmerald
    highlight! link GlyphPalette3 NightflyYellow
    highlight! link GlyphPalette4 NightflyBlue
    highlight! link GlyphPalette6 NightflyTurquoise
    highlight! link GlyphPalette7 NightflyWhite
    highlight! link GlyphPalette9 NightflyWatermelon

    " indentLine plugin
    if !exists('g:indentLine_defaultGroup') && !exists('g:indentLine_color_gui')
        let g:indentLine_color_gui = s:deep_blue
    endif

    " mistfly-statusline plugin
    highlight! link MistflyNormal NightflyBlueMode
    highlight! link MistflyInsert NightflyEmeraldMode
    highlight! link MistflyVisual NightflyPurpleMode
    highlight! link MistflyCommand NightflyTanMode
    highlight! link MistflyReplace NightflyWatermelonMode

    " NERDTree plugin
    highlight! link NERDTreeClosable NightflyGreyBlue
    highlight! link NERDTreeCWD NightflyPurple
    highlight! link NERDTreeDir NightflyBlue
    highlight! link NERDTreeDirSlash NightflyWatermelon
    highlight! link NERDTreeExecFile NightflyTan
    highlight! link NERDTreeFile NightflyWhite
    highlight! link NERDTreeFlags NightflyPurple
    highlight! link NERDTreeHelp NightflyCadetBlue
    highlight! link NERDTreeLinkDir NightflyBlue
    highlight! link NERDTreeLinkFile NightflyBlue
    highlight! link NERDTreeLinkTarget NightflyTurquoise
    highlight! link NERDTreeOpenable NightflyGreyBlue
    highlight! link NERDTreePart NightflyRegalBlue
    highlight! link NERDTreePartFile NightflyRegalBlue
    highlight! link NERDTreeUp NightflyBlue

    " NERDTree Git plugin
    highlight! link NERDTreeGitStatusDirDirty NightflyTan
    highlight! link NERDTreeGitStatusModified NightflyWatermelon
    highlight! link NERDTreeGitStatusRenamed NightflyBlue
    highlight! link NERDTreeGitStatusStaged NightflyBlue
    highlight! link NERDTreeGitStatusUntracked NightflyRed

    " Misc items
    highlight! link bufExplorerHelp NightflyCadetBlue
    highlight! link bufExplorerSortBy NightflyCadetBlue
    highlight! link CleverFDefaultLabel NightflyWatermelon
    highlight! link CtrlPMatch NightflyOrange
    highlight! link Directory NightflyBlue
    highlight! link erubyDelimiter NightflyWatermelon
    highlight! link HighlightedyankRegion NightflyRegalBlue
    highlight! link jsonKeyword NightflyLavender
    highlight! link jsonQuote NightflyWhite
    highlight! link jsonString NightflyLime
    highlight! link netrwClassify NightflyWatermelon
    highlight! link netrwDir NightflyBlue
    highlight! link netrwExe NightflyTan
    highlight! link tagName NightflyTurquoise
    highlight! link Cheat40Header NightflyBlue
    highlight! link yamlBlockMappingKey NightflyBlue
    highlight! link yamlFlowMappingKey NightflyBlue
    if g:nightflyUnderlineMatchParen
        exec 'highlight MatchWord gui=underline guisp=' . s:orange
    else
        highlight! link MatchWord NightflyOrange
    endif
    exec 'highlight snipLeadingSpaces guibg=bg guifg=fg'
    exec 'highlight MatchWordCur guibg=bg'
    highlight! link fishInnerVariable NightflyTurquoise
    highlight! link fishParameter NightflyTurquoise
    highlight! link fishVariable NightflyTurquoise

    " Signify plugin
    highlight! link SignifySignAdd NightflyEmerald
    highlight! link SignifySignChange NightflyMalibu
    highlight! link SignifySignChangeDelete NightflyOrange
    highlight! link SignifySignDelete NightflyRed

    " Tagbar plugin
    highlight! link TagbarFoldIcon NightflyCadetBlue
    highlight! link TagbarVisibilityPublic NightflyGreen
    highlight! link TagbarVisibilityProtected NightflyGreen
    highlight! link TagbarVisibilityPrivate NightflyGreen
    highlight! link TagbarKind NightflyEmerald

    " FZF plugin
    exec 'highlight FzfBorder guifg=' . s:slate_blue
    exec 'highlight FzfFgPlus guifg=' . s:white_blue
    exec 'highlight FzfNormal guifg=' . s:ash_blue
    exec 'highlight FzfPrompt guifg=' . s:blue . ' guibg=' . s:slate_blue
    exec 'highlight FzfSubstring guifg=' . s:orange
    let g:fzf_colors = {
      \  'fg':      ['fg', 'FzfNormal'],
      \  'bg':      ['bg', 'Normal'],
      \  'hl':      ['fg', 'FzfSubstring'],
      \  'fg+':     ['fg', 'FzfFgPlus'],
      \  'bg+':     ['bg', 'Pmenu'],
      \  'hl+':     ['fg', 'FzfSubstring'],
      \  'info':    ['fg', 'String'],
      \  'border':  ['fg', 'FzfBorder'],
      \  'prompt':  ['fg', 'FzfPrompt'],
      \  'pointer': ['fg', 'Exception'],
      \  'marker':  ['fg', 'FzfSubstring'],
      \  'spinner': ['fg', 'Type'],
      \  'header':  ['fg', 'CursorLineNr'],
      \  'gutter':  ['bg', 'Normal']
      \}
endfunction
