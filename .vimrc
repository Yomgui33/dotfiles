" remaps
inoremap hh <ESC>
nnoremap <space> :
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" general settings
syntax enable

set number 
set relativenumber

set noswapfile 
set nobackup
set history=1000

set hlsearch 
set ignorecase 
set incsearch
set smartcase
set showmatch

set tabstop=4
set nrformats+=alpha
set nocompatible
" set cursorline

" filetype detection
filetype on
filetype plugin on 
filetype indent on

set laststatus=2
set noshowmode

" set foldmethod=indent
" set foldlevel=1
" set foldclose=all

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 2)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
