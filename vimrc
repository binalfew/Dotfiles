set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'daylerees/colour-schemes', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
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

set t_Co=256
set guifont=Menlo\ for\ Powerline:h14 " Set font name and size
set guioptions-=r " Removes right hand scroll bar
colorscheme Grunge " Set the current color scheme
set number " Show line numbers
set go-=L " Removes left hand scroll bar
set linespace=15
set showmode " always show what mode we're currently editing in
set nowrap " don't wrap lines
set tabstop=4 " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4 " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab " expand tabs by default (overloadable per file type later)
set shiftwidth=4 " number of spaces to use for autoindenting
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell " don't beep
set noerrorbells " don't beep
set autowrite "Save on buffer switch
set mouse=a

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
" Fast saves
nmap <leader>w :w!<cr>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
