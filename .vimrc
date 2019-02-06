" Must come first because it changes other options.
set nocompatible
filetype off
syntax enable
colorscheme Tomorrow-Night-Eighties

set number
set ruler
set nowrap
set cursorline
set laststatus=2
set nostartofline
set scrolloff=3

set shiftwidth=2
set tabstop=2
set expandtab

set encoding=utf-8
set ttyfast
set binary
set noeol
set showcmd
set showmode
set backspace=indent,eol,start
set hidden
set complete=.,b,u,]
set completeopt=menu,preview
set title
set visualbell
set t_Co=256

set nobackup
set nowritebackup
set noswapfile
set tildeop
set shortmess=atI

set noequalalways
set autoread

set wildmenu
set wildmode=longest,list:longest
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,*.jpg,*.jpeg,*.png,*.gif,vendor/**,db/sphinx,log/**,tmp/**,public/uploads,coverage/**,*/tmp/*,_site/**,public/javascripts/vendor/**

set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault

" keep cursor centered
set scrolloff=5
set so=999

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
