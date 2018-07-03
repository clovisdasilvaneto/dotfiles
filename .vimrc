" Must come first because it changes other options.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic' 
Plugin 'kchmck/vim-coffee-script' 
Plugin 'mxw/vim-jsx'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
