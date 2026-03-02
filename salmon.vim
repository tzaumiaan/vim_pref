" Vim color file
" Maintainer:	Min-An Chao <minan.chao@gmail.com>
" Last Change:	31.08.2023

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="salmon"

hi Normal	guifg=White guibg=#101020

" highlight groups
hi ColorColumn	guibg=lightsalmon
hi Cursor	guibg=mistyrose guifg=salmon
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
hi ErrorMsg	guifg=White guibg=Red
hi VertSplit	guibg=#181838 guifg=grey50 gui=none
hi Folded	guibg=grey30 guifg=gold
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=slategrey guibg=khaki
"hi LineNr
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=lightsalmon guibg=#303030
hi Question	guifg=springgreen
hi Search	guibg=peru guifg=wheat
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=lightsalmon guifg=black gui=none
hi StatusLineNC	guibg=lightsalmon guifg=grey50 gui=none
hi Title	guifg=indianred
hi Visual	gui=none guifg=khaki guibg=olivedrab
"hi VisualNOS
hi WarningMsg	guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment	guifg=darkseagreen
hi Constant	guifg=salmon
hi Identifier	guifg=palegreen
hi Statement	guifg=lightsalmon
hi PreProc	guifg=gold
hi Type		guifg=lightskyblue
hi Special	guifg=#bb7fff
"hi Underlined
hi Ignore	guifg=#181838
hi Error	guifg=White guibg=Red
hi Todo		guifg=snow guibg=darksalmon

" color terminal definitions
hi Normal	ctermfg=15 ctermbg=0
hi SpecialKey	ctermfg=12
hi NonText	cterm=bold ctermfg=8 ctermbg=0
hi Directory	ctermfg=14
hi ErrorMsg	cterm=bold ctermfg=15 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=0 ctermbg=11
hi Search	cterm=NONE ctermfg=15 ctermbg=3
hi MoreMsg	ctermfg=2
hi ModeMsg	cterm=NONE ctermfg=11
hi LineNr	ctermfg=3
hi Question	ctermfg=10
hi StatusLine	cterm=NONE ctermfg=0 ctermbg=11
hi StatusLineNC cterm=NONE ctermfg=8 ctermbg=7
hi VertSplit	cterm=NONE ctermfg=8 ctermbg=0
hi Title	ctermfg=1
hi Visual	cterm=NONE ctermfg=15 ctermbg=4
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=9
hi WildMenu	ctermfg=0 ctermbg=11
hi Folded	ctermfg=11 ctermbg=8
hi FoldColumn	ctermfg=3 ctermbg=8
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=8
hi Constant	ctermfg=9
hi Special	ctermfg=13
hi Identifier	ctermfg=14
hi Statement	ctermfg=11
hi PreProc	ctermfg=3
hi Type		ctermfg=12
hi Underlined	cterm=underline ctermfg=13
hi Ignore	cterm=bold ctermfg=15
hi Ignore	ctermfg=8
hi Error	cterm=bold ctermfg=15 ctermbg=1
hi Todo		ctermfg=0 ctermbg=11


"vim: sw=4
