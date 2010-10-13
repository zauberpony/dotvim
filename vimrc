" pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

syntax on
set background=dark

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

set hls
set ruler

let $LOGNAME="oxy"
let g:rvSaveDirectoryName="/home/elmar/.vim/RCS/"
let g:rvSaveDirectoryType=1
let g:netrw_ftp_cmd="ftp -p"

"set number
set relativenumber

set undofile
set undodir=~/.vim/undodir/

set cursorline
highlight CursorLine ctermbg=Red cterm=none

" ignore whitespace in vimdiff
set diffopt+=iwhite

let mapleader = ","

" statusline settings
set statusline=%<%F\ %h%m%r\ %y\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}
" always show statusline
set laststatus=2
