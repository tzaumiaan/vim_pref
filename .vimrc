set nu
set ruler
set nowrap
set writebackup
set nobackup
set noundofile
" set all swap files in .vim folder
set directory^=$HOME/.vim/swap//

colorscheme salmon
"colorscheme desert
if has ("gui_running")
  set guifont=Ubuntu\ Mono:h16
  "set guifont=Ubuntu\ Mono\ 13
endif
set columns=124
set colorcolumn=120
set lines=32
set encoding=utf-8
set fileencoding=utf-8
"set ff=dos
set ff=unix
set backspace=indent,eol,start
syntax on
set laststatus=2
set hlsearch
set belloff=all

" associate sv files
autocmd BufNewFile,BufRead *.sv,*.svh,*.mp set syntax=systemverilog

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
