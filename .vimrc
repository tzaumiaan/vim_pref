set nu
set ruler
set writebackup
set nobackup
set noundofile
colorscheme salmon
if has ("gui_running")
  "set guifont=Ubuntu\ Mono:h12
  set guifont=Ubuntu\ Mono\ 12
endif
set columns=120
set encoding=utf-8
set fileencoding=utf-8
"set ff=dos
set ff=unix
set backspace=indent,eol,start
syntax on
set laststatus=2

" highlist tab
highlight SpecialKey ctermfg=1
set list
set listchars=tab:T>

" status line left part
set statusline=%t " file name w/o path name
set statusline+=\ %y " file type
set statusline+=%h%m%r " modification status
set statusline+=%=
" status line right part
set statusline+=[%{strlen(&fenc)?&fenc:'none'},%{&ff}]
set statusline+=\ %c,%l/%L\ %P
