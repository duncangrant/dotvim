call pathogen#infect() 

set nocompatible                      " use vim defaults
set scrolloff=3                       " keep 3 lines when scrolling
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set complete=.,w,b,u,t,i

set showcmd
set nobackup
set number
set ruler

set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
set tags=~/.tags

set visualbell t_vb=
set novisualbell

set backspace=indent,eol,start

" Wildmenu
if has("wildmenu")
  set wildignore+=*.a,*.o
  set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
  set wildignore+=.DS_Store,.git,.hg,.svn
  set wildignore+=*~,*.swp,*.tmp
  set wildmenu
  set wildmode=longest,list
endif

syntax on
set filetype=on
filetype plugin on
filetype indent on

" HTML (tab width 2 chr, no wrapping)
 autocmd FileType html set sw=2
 autocmd FileType html set ts=2
 autocmd FileType html set sts=2
 autocmd FileType html set textwidth=0
" XHTML (tab width 2 chr, no wrapping)
 autocmd FileType xhtml set sw=2
 autocmd FileType xhtml set ts=2
 autocmd FileType xhtml set sts=2
 autocmd FileType xhtml set textwidth=0
" CSS (tab width 2 chr, wrap at 79th char)
 autocmd FileType css set sw=2
 autocmd FileType css set ts=2
 autocmd FileType css set sts=2

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set t_RV=
