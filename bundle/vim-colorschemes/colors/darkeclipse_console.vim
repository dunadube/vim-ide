" Name:		darkeclipse.vim
" Maintainer:	Kojo Sugita
" Last Change:	2008-09-04
" Revision:	1.0
set background=dark
hi clear 
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'darkeclipse'
"default colors
hi Normal guifg=#b0b0b0 ctermfg=145 guibg=#101520 ctermbg=233 
hi NonText guifg=#606060 ctermfg=59 guibg=#202530 ctermbg=235 gui=none 
hi SpecialKey guifg=#606060 ctermfg=59 guibg=#101520 ctermbg=233 
hi Cursor guifg=#101520 ctermfg=233 guibg=#c0c0c0 ctermbg=250 
hi lCursor guifg=#101520 ctermfg=233 guibg=#c0c0c0 ctermbg=250 
hi CursorIM guifg=#101520 ctermfg=233 guibg=#c0c0c0 ctermbg=250 
" Directory
hi Directory guifg=#f0f0f0 ctermfg=7 guibg=#101520 ctermbg=233 gui=bold 
" Diff
hi DiffAdd guifg=#8090f0 ctermfg=105 guibg=#101520 ctermbg=233 gui=none 
hi DiffChange guifg=#8090f0 ctermfg=105 guibg=#101520 ctermbg=233 gui=none 
hi DiffDelete guifg=#8090f0 ctermfg=105 guibg=#101520 ctermbg=233 gui=none 
hi DiffText guifg=#8090f0 ctermfg=105 guibg=#101520 ctermbg=233 gui=bold 
" Message
hi ModeMsg guifg=#c0c0c0 ctermfg=250 guibg=#101520 ctermbg=233 
hi MoreMsg guifg=#c0c0c0 ctermfg=250 guibg=#101520 ctermbg=233 
hi ErrorMsg guifg=#ee1111 ctermfg=9 guibg=#101520 ctermbg=233 
hi WarningMsg guifg=#ee1111 ctermfg=9 guibg=#101520 ctermbg=233 
hi VertSplit guifg=#808080 ctermfg=244 guibg=#808080 ctermbg=244 
" Folds
hi Folded guifg=#c0c0c0 ctermfg=250 guibg=#101520 ctermbg=233 
hi FoldColumn guifg=#c0c0c0 ctermfg=250 guibg=#102010 ctermbg=233 
" Search
hi Search guifg=#101520 ctermfg=233 guibg=#c0c0c0 ctermbg=250 gui=none 
hi IncSearch guifg=#101520 ctermfg=233 guibg=#c0c0c0 ctermbg=250 gui=none 
hi LineNr guifg=#606570 ctermfg=241 guibg=#000000 ctermbg=0 gui=none 
hi Question guifg=#c0c0c0 ctermfg=250 guibg=#101520 ctermbg=233 
"\n, \0, %d, %s, etc...
hi Special guifg=#f0f0f0 ctermfg=7 guibg=#101520 ctermbg=233 gui=none 
" status line
hi StatusLine guifg=#000000 ctermfg=0 guibg=#808080 ctermbg=244 gui=none 
hi StatusLineNC guifg=#404040 ctermfg=238 guibg=#707070 ctermbg=242 gui=none 
hi WildMenu guifg=#000000 ctermfg=0 guibg=#c0c0c0 ctermbg=250 
hi Title guifg=#9090f0 ctermfg=105 guibg=#101520 ctermbg=233 gui=bold 
hi Visual guibg=#000000 ctermbg=0 guifg=#cae682 ctermfg=186 gui=underline 
hi VisualNOS guifg=#b0b0b0 ctermfg=145 guibg=#101520 ctermbg=233 
hi Number guifg=#9090f0 ctermfg=105 guibg=#101520 ctermbg=233 
hi Char guifg=#9090f0 ctermfg=105 guibg=#101520 ctermbg=233 
hi String guifg=#9090f0 ctermfg=105 guibg=#101520 ctermbg=233 
hi Boolean guifg=#9090f0 ctermfg=105 guibg=#101520 ctermbg=233 
hi Comment guifg=#70c010 ctermfg=70 
hi Constant guifg=#f0b040 ctermfg=215 guibg=#101520 ctermbg=233 gui=none 
" hi Identifier	guifg=#9090f0
hi Identifier guifg=#f0a0b0 ctermfg=217 
hi Statement guifg=#f0a0b0 ctermfg=217 gui=none 
"Procedure name
hi Function guifg=#f0f0f0 ctermfg=7 
"Define, def
hi PreProc guifg=#f0f0f0 ctermfg=7 gui=none 
hi Type guifg=#f0a0b0 ctermfg=217 gui=none 
hi Underlined guifg=#c0c0c0 ctermfg=250 gui=underline 
hi Error guifg=#ee1111 ctermfg=9 guibg=#101520 ctermbg=233 
hi Todo guifg=#9090f0 ctermfg=105 guibg=#101520 ctermbg=233 gui=none 
hi SignColumn guibg=#101520 ctermbg=233 
" Matches
hi MatchParen guifg=#000000 ctermfg=0 guibg=#90e030 ctermbg=113 gui=none 
if version >= 700
  " Pmenu
hi Pmenu guibg=#202530 ctermbg=235 guifg=#c0c0c0 ctermfg=250 
hi PmenuSel guibg=#f0f0f0 ctermbg=7 guifg=#101520 ctermfg=233 
hi PmenuSbar guibg=#505050 ctermbg=239 
hi PmenuThumb guifg=#f0f0f0 ctermfg=7 
  " Tab
hi TabLine guifg=#b0b0b0 ctermfg=145 guibg=black gui=underline 
hi TabLineFill guifg=#b0b0b0 ctermfg=145 guibg=black gui=none 
hi TabLineSel guifg=#9090f0 ctermfg=105 guibg=black gui=underline 
endif
" vim:set ts=8 sts=2 sw=2 tw=0:
