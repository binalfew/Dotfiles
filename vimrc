set nocompatible " Disable vi compatibility, prefer the latest vim settings
"
so ~/.vim/plugins.vim

"------------------General Settings-------------------"
syntax enable
colorscheme Grunge
set t_Co=256
set pastetoggle=<F2>
let mapleader = ","
let g:mapleader = ","

set nobackup " do not keep backup files, it's 70's style cluttering
set noswapfile   " do not write annoying intermediate swap files
set directory=~/.vim/swap// " Swap files out of the project directory, incase it is ever turned on
set backupdir=~/.vim/backup//


"------------------Gui options--------------------
set macligatures
set guifont=Fira\ Code:h17
set guioptions-=l " Removes left hand scroll bar
set guioptions-=L 
set guioptions-=r " Removes right hand scroll bar
set guioptions-=R 
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
set showmatch " show matching brackets
set hidden "Switch between buffers without saving


"----------------Search-------------------
set hlsearch "Highlight searching
set incsearch " Show search results as I type
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase,


"----------------Mappings-------------------
" Fast saves
nnoremap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Remove search results highlighting
nnoremap <leader><space> :nohlsearch<cr>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Open vimrc file for edit
" Replace :tabedit with edit, split, vsplit
nnoremap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <leader>p :tabedit ~/.vim/plugins.vim<CR>

" Disable the arrow keys
nnoremap <Up> :echomsg "use k"<cr>
nnoremap <Down> :echomsg "use j"<cr>
nnoremap <Left> :echomsg "use h"<cr>
nnoremap <Right> :echomsg "use l"<cr>

" Change a word to uppercase
inoremap <c-u> <esc>viwU<esc>i

" Surround a word with quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Toggle Tagbar
nnoremap <F8> :TagbarToggle<cr>

" Toggle NERDTree
nnoremap <D-1> :NERDTreeToggle<cr>

" CtrlP tags
nnoremap <D-r> :CtrlPBufTag<cr>

" CtrlP recently opened files
nnoremap <D-e> :CtrlPMRUFiles<cr>


" Easier window navigation
set splitright
set splitbelow
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Move visual block up or down with indentation
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"------------Abbreviations-----------------------
abbrev mm !php artisan make:model
abbrev mc !php artisan make:controller
abbrev mg !php artisan make:migration



" Source the vimrc file after saving it
augroup autosourcing
    autocmd!
    " source vimrc file when saving
    autocmd bufwritepost .vimrc source % 

    " refresh NERDTree when its window is focused, far better than always pressing R
    autocmd WinEnter * if exists('b:NERDTree') | execute 'normal R' | endif
augroup END

"------------------Plugins------------------
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
