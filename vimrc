set nocompatible " Disable vi compatibility
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'daylerees/colour-schemes', {'rtp': 'vim/'}
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Bundle 'sickill/vim-pasta'
Plugin 'vim-scripts/ZoomWin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

colorscheme Grunge
set t_Co=256
"set guifont=Menlo\ for\ Powerline:h16 " Set font name and size
set guifont=Fira\ Code:h16
set guioptions-=r " Removes right hand scroll bar
set number " Show line numbers
set go-=L " Removes left hand scroll bar
set linespace=15
set showmode " always show what mode we're currently editing in
"set showcmd "Show command in bottom right portion of the screen
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
"set ruler "Display current cursor position in lower right corner
set hidden "Switch between buffers without saving
set nohlsearch "Highlight searching

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saves
nnoremap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Remove search results
command! H let @/=""

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Swap files out of the project directory
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Laravel specifics
" Abbreviations
abbrev mm !php artisan make:model
abbrev mc !php artisan make:controller
abbrev mg !php artisan make:migration

" I Don't want to pull up vendor files when I do CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Open vimrc file for edit
" Replace :tabedit with edit, split, vsplit
nnoremap <leader>v :tabedit $MYVIMRC<CR>

" Disable the arrow keys
nnoremap <Up> :echomsg "use k"<cr>
nnoremap <Down> :echomsg "use j"<cr>
nnoremap <Left> :echomsg "use h"<cr>
nnoremap <Right> :echomsg "use l"<cr>

" clean up netrw config
let g:netrw_browse_split=0
let g:netrw_liststyle=0
let g:netrw_banner=0
let g:netrw_list_hide='.git'

" Change a word to uppercase
inoremap <c-u> <esc>viwU<esc>i

" Surround a word with quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Toggle Tagbar
nnoremap <F8> :TagbarToggle<cr>
