" Vim color file
" A modification by Neil H Watson of:
" Maintainer: Datila Carvalho <datila@saci.homeip.net>
" Last Change: November, 3, 2003
" Version: 0.1

" This is a VIM's version of the emacs color theme
" _Dark Blue2_ created by Chris McMahan.

" for this scheme I have modified my xterm settings:
"# fonts
"xterm*faceName: Bitstream Vera Sans Mono:style=Bold
"#xterm*faceName: Monospace
"xterm*faceSize: 14 
"
"# colors
"xterm*background: #233b5a
"xterm*foreground: gray
"xterm*color0: #233b5a
"# set bit bg color
"xterm*color1: red
"xterm*color2: lightsteelblue
"xterm*color3: mediumseagreen
"xterm*color4: #66cdaa
"xterm*color5: lightgoldenrod
"xterm*color6: orange
"# set bit fg color
"xterm*color7: gray
"xterm*color8: lightskyblue
"xterm*color9: darkgreen
"# exec color
"xterm*color10: mediumseagreen
"xterm*color11: pink
"# dir color
"xterm*color12: lightsteelblue
"xterm*color13: steelblue
"# link colors
"xterm*color14: aquamarine

" Init stuff
set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "neilwatson"

" Colors

" GUI colors
hi Cursor               guifg=#233b5a guibg=orange
hi CursorIM             guifg=NONE guibg=Yellow
hi Directory            gui=bold guifg=LightSteelBlue
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
hi DiffText             guibg=grey50
hi ErrorMsg             gui=bold guifg=White guibg=gray85
hi VertSplit            gui=bold guifg=NONE guibg=gray80
"hi Folded
"hi FoldColumn
"hi IncSearch
hi LineNr               ctermfg=5 guifg=lightgoldenrod1
hi ModeMsg              gui=bold
"hi MoreMsg
"hi NonText
"hi Normal               guibg=#233b5a guifg=#fff8dc
hi Normal               guibg=#233b5a guifg=#dddddd
"hi Question
hi Search               gui=bold guifg=#233b5a guibg=lightgoldenrod
"hi SpecialKey
hi StatusLine           ctermfg=4 guifg=mediumaquamarine
hi StatusLineNC         guifg=steelblue3
"hi Title
hi Visual               guifg=steelblue guibg=fg
hi VisualNOS            gui=bold guifg=steelblue guibg=fg
hi WarningMsg           guifg=White guibg=Tomato
"hi WildMenu

" Colors for syntax highlighting
hi Comment          ctermfg=13 guifg=steelblue

hi Constant         ctermfg=5 cterm=bold term=bold gui=bold guifg=lightgoldenrod1
    hi String       ctermfg=4 guifg=mediumaquamarine
    hi Character    ctermfg=4 guifg=mediumaquamarine
    hi Number       ctermfg=5 cterm=bold term=bold gui=bold guifg=lightgoldenrod1
    hi Boolean      ctermfg=5 cterm=bold term=bold gui=bold guifg=lightgoldenrod1
    hi Float        ctermfg=5 cterm=bold term=bold gui=bold guifg=lightgoldenrod1

hi Identifier       ctermfg=10 cterm=bold term=bold gui=bold guifg=MediumSeaGreen
    hi Function     ctermfg=8 guifg=lightskyblue

hi Statement        ctermfg=12 cterm=bold term=bold gui=bold guifg=LightSteelBlue
    hi Conditional  ctermfg=12 cterm=bold term=bold gui=bold guifg=LightSteelBlue
    hi Repeat       ctermfg=12 cterm=bold term=bold gui=bold guifg=LightSteelBlue
    hi Label        ctermfg=12 guifg=LightSteelBlue
    hi Operator     ctermfg=12 guifg=LightSteelBlue
    "hi Keyword
    "hi Exception

hi PreProc          ctermfg=12 guifg=lightsteelblue
    hi Include      ctermfg=12 cterm=bold term=bold gui=bold guifg=lightsteelblue
    hi Define       ctermfg=12 guifg=lightsteelblue
    hi Macro        ctermfg=12 guifg=lightsteelblue
    hi PreCondit    ctermfg=12 guifg=lightsteelblue

hi Type             ctermfg=3 cterm=bold term=bold gui=bold guifg=MediumSeaGreen
    hi StorageClass ctermfg=5 cterm=bold term=bold gui=bold guifg=lightgoldenrod1
    hi Structure    ctermfg=5 cterm=bold term=bold gui=bold guifg=lightgoldenrod1
    hi Typedef      ctermfg=5 cterm=bold term=bold gui=bold guifg=lightgoldenrod1

"hi Special
    ""Underline Character
    "hi SpecialChar
    "hi Tag
    ""Statement
    "hi Delimiter
    ""Bold comment (in Java at least)
    "hi SpecialComment
    "hi Debug

hi Underlined           cterm=underline term=underline gui=underline

hi Ignore               guifg=bg

"hi Error                gui=bold guifg=Red guibg=Red
hi Error       ctermfg=Red ctermbg=0 guibg=#233b5a  guifg=Red cterm=underline gui=underline term=reverse
hi Errors      ctermfg=Red ctermbg=0 guibg=#233b5a  guifg=Red cterm=underline gui=underline term=reverse
hi SpellErrors ctermfg=Red ctermbg=0 guibg=#233b5a  guifg=Red cterm=underline gui=underline term=reverse

"hi Todo
