hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "earendel"

execute "command! -nargs=1 Colo set background=<args>"

if &background == "light"
    hi Normal ctermbg=White ctermfg=Black guibg=#f5f5f5 guifg=#000000 gui=none

    hi Cursor guibg=#000000 guifg=#ffffff gui=none
    hi CursorColumn ctermbg=LightGray ctermfg=fg guibg=#dcdcdc gui=none
    hi CursorLine ctermbg=LightGray ctermfg=fg guibg=#dcdcdc gui=none
    hi DiffAdd guibg=#bae981 guifg=fg gui=none
    hi DiffChange guibg=#8495e6 guifg=fg gui=none
    hi DiffDelete guibg=#ff95a5 guifg=fg gui=none
    hi DiffText guibg=#b9c2f0 guifg=fg gui=bold
    hi Directory guibg=bg guifg=#272fc2 gui=none
    hi ErrorMsg guibg=#ca001f guifg=#ffffff gui=bold
    hi FoldColumn ctermbg=bg guibg=bg guifg=#606060 gui=none
    hi Folded guibg=#cdcdcd guifg=#343c65 gui=bold
    hi IncSearch guibg=#f7b69d gui=none
    hi LineNr guibg=bg guifg=#606060 gui=none
    hi ModeMsg ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=bold
    hi MoreMsg guibg=bg guifg=#4d4d4d gui=bold
    hi NonText ctermfg=DarkGray guibg=bg guifg=#606060 gui=bold
    hi Pmenu guibg=#acb3d5 guifg=fg gui=none
    hi PmenuSbar guibg=#737db7 guifg=fg gui=none
    hi PmenuSel guibg=#fee06b guifg=fg gui=none
    hi PmenuThumb guibg=#cacee3 guifg=fg gui=none
    hi Question guibg=bg guifg=#4d4d4d gui=bold
    hi Search guibg=#fee481 gui=none
    hi SignColumn ctermbg=bg guibg=bg guifg=#606060 gui=none
    hi SpecialKey guibg=bg guifg=#844631 gui=none
    hi StatusLine ctermbg=Black ctermfg=White guibg=#9da5cc guifg=fg gui=none
    hi StatusLineNC ctermbg=LightGray ctermfg=fg guibg=#b5b5b5 guifg=fg gui=none
    if has("spell")
        hi SpellBad guisp=#ca001f gui=undercurl
        hi SpellCap guisp=#272fc2 gui=undercurl
        hi SpellLocal guisp=#0f8674 gui=undercurl
        hi SpellRare guisp=#d16c7a gui=undercurl
    endif
    hi TabLine guibg=#c7c7c7 guifg=fg gui=underline
    hi TabLineFill guibg=#c7c7c7 guifg=fg gui=underline
    hi TabLineSel guibg=bg guifg=fg gui=bold
    hi Title guifg=fg gui=bold
    hi VertSplit ctermbg=LightGray ctermfg=fg guibg=#b5b5b5 guifg=fg gui=none
    if version >= 700
        hi Visual ctermbg=LightGray ctermfg=fg guibg=#c7cbe2 gui=none
    else
        hi Visual ctermbg=LightGray ctermfg=fg guibg=#c7cbe2 guifg=fg gui=none
    endif    
    hi VisualNOS ctermbg=DarkGray ctermfg=fg guibg=bg guifg=#5763a8 gui=bold,underline
    hi WarningMsg guibg=bg guifg=#ca001f gui=bold
    hi WildMenu guibg=#fedc56 guifg=fg gui=none

    hi Comment guibg=bg guifg=#558817 gui=none
    hi Constant guibg=bg guifg=#a8660d gui=none
    hi Error guibg=bg guifg=#bf001d gui=none
    hi Identifier guibg=bg guifg=#0e7c6b gui=none
    hi Ignore guibg=bg guifg=bg gui=none
    hi lCursor guibg=#79bf21 guifg=#ffffff gui=none
    hi MatchParen guibg=#0f8674 guifg=#ffffff gui=none
    hi PreProc guibg=bg guifg=#a33243 gui=none
    hi Special guibg=bg guifg=#844631 gui=none
    hi Statement guibg=bg guifg=#2239a8 gui=bold
    hi Todo guibg=#fedc56 guifg=#512b1e gui=bold
    hi Type guibg=bg guifg=#1d318d gui=bold
    hi Underlined ctermbg=bg ctermfg=fg guibg=bg guifg=#272fc2 gui=underline

    hi htmlBold ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=bold
    hi htmlBoldItalic ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=bold,italic
    hi htmlBoldUnderline ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=bold,underline
    hi htmlBoldUnderlineItalic ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=bold,underline,italic
    hi htmlItalic ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=italic
    hi htmlUnderline ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=underline
    hi htmlUnderlineItalic ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=underline,italic
else
    hi Normal ctermbg=Black ctermfg=LightGray guibg=#101010 guifg=#cdcdcd gui=none

    hi Cursor guibg=#e5e5e5 guifg=#000000 gui=none
    hi CursorColumn ctermbg=DarkGray ctermfg=White guibg=#424242 gui=none
    hi CursorLine ctermbg=DarkGray ctermfg=White guibg=#424242 gui=none
    hi DiffAdd guibg=#558817 guifg=fg gui=none
    hi DiffChange guibg=#1b2e85 guifg=fg gui=none
    hi DiffDelete guibg=#9f0018 guifg=fg gui=none
    hi DiffText guibg=#2540ba guifg=fg gui=bold
    hi Directory guibg=bg guifg=#7277e2 gui=none
    hi ErrorMsg guibg=#ca001f guifg=#e5e5e5 gui=bold
    hi FoldColumn ctermbg=bg guibg=bg guifg=#a0a0a0 gui=none
    hi Folded guibg=#595959 guifg=#bdc2dd gui=bold
    hi IncSearch guibg=#a7380e guifg=fg gui=none
    hi LineNr guibg=bg guifg=#a0a0a0 gui=none
    hi ModeMsg ctermbg=bg ctermfg=fg guibg=bg guifg=fg gui=bold
    hi MoreMsg guibg=bg guifg=#b3b3b3 gui=bold
    hi NonText ctermfg=DarkGray guibg=bg guifg=#a0a0a0 gui=bold
    hi Pmenu guibg=#3e4677 guifg=fg gui=none
    hi PmenuSbar guibg=#333a62 guifg=fg gui=none
    hi PmenuSel guibg=#f3c201 guifg=#000000 gui=none
    hi PmenuThumb guibg=#5f6aab guifg=fg gui=none
    hi Question guibg=bg guifg=#b3b3b3 gui=bold
    hi Search guibg=#806600 guifg=fg gui=none
    hi SignColumn ctermbg=bg guibg=bg guifg=#a0a0a0 gui=none
    hi SpecialKey guibg=bg guifg=#d3a901 gui=none
    hi StatusLine ctermbg=LightGray ctermfg=Black guibg=#4d5793 guifg=#ffffff gui=bold
    hi StatusLineNC ctermbg=LightGray ctermfg=Black guibg=#707070 guifg=#ffffff gui=bold
    if has("spell")
        hi SpellBad guisp=#ca001f gui=undercurl
        hi SpellCap guisp=#7277e2 gui=undercurl
        hi SpellLocal guisp=#13a791 gui=undercurl
        hi SpellRare guisp=#e09ea8 gui=undercurl
    endif
    hi TabLine guibg=#4d4d4d guifg=fg gui=underline
    hi TabLineFill guibg=#4d4d4d guifg=fg gui=underline
    hi TabLineSel guibg=bg guifg=fg gui=bold
    hi Title ctermbg=bg ctermfg=White guifg=fg gui=bold
    hi VertSplit ctermbg=LightGray ctermfg=Black guibg=#707070 guifg=#ffffff gui=bold
    if version >= 700
        hi Visual ctermbg=LightGray ctermfg=Black guibg=#3d4576 gui=none
    else
        hi Visual ctermbg=LightGray ctermfg=Black guibg=#3d4576 guifg=fg gui=none
    endif    
    hi VisualNOS ctermbg=DarkGray ctermfg=Black guibg=bg guifg=#5f6aab gui=bold,underline
    hi WarningMsg guibg=bg guifg=#ea0023 gui=bold
    hi WildMenu guibg=#fbca01 guifg=#000000 gui=bold

    hi Comment guibg=bg guifg=#77be21 gui=none
    hi Constant guibg=bg guifg=#dc8511 gui=none
    hi Error guibg=bg guifg=#ea0023 gui=none
    hi Identifier guibg=bg guifg=#16c9ae gui=none
    hi Ignore guibg=bg guifg=bg gui=none
    hi lCursor guibg=#c4ec93 guifg=#000000 gui=none
    hi MatchParen guibg=#17d2b7 guifg=#000000 gui=none
    hi PreProc guibg=bg guifg=#e09ea8 gui=none
    hi Special guibg=bg guifg=#d3a901 gui=none
    hi Statement guibg=bg guifg=#a7b4ed gui=none
    hi Todo guibg=#fedc56 guifg=#512b1e gui=bold
    hi Type guibg=bg guifg=#95a4ea gui=none
    hi Underlined ctermbg=bg ctermfg=White guibg=bg guifg=#7277e2 gui=underline

    hi htmlBold ctermbg=bg ctermfg=White guibg=bg guifg=fg gui=bold
    hi htmlBoldItalic ctermbg=bg ctermfg=White guibg=bg guifg=fg gui=bold,italic
    hi htmlBoldUnderline ctermbg=bg ctermfg=White guibg=bg guifg=fg gui=bold,underline
    hi htmlBoldUnderlineItalic ctermbg=bg ctermfg=White guibg=bg guifg=fg gui=bold,underline,italic
    hi htmlItalic ctermbg=bg ctermfg=White guibg=bg guifg=fg gui=italic
    hi htmlUnderline ctermbg=bg ctermfg=White guibg=bg guifg=fg gui=underline
    hi htmlUnderlineItalic ctermbg=bg ctermfg=White guibg=bg guifg=fg gui=underline,italic
endif

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline
