" vundle
" set filetype off when sourcing vundle packages, so package ftdetect kicks in
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

source ~/.vim/bundles.vim

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" load indentation rules and plugins according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif


" **** visual settings ****
colorscheme wombat256mod
syntax on
set background=dark

" show the current line as red bar
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=235 cterm=None
highlight CursorColumn ctermbg=235

" statusline appereance
set statusline=%<%F\ %h%m%r\ %y\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}
" always show statusline
set laststatus=2

set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden         " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

set backspace=eol,start
set tabstop=4

set hls
set ruler

set smartindent

set wildmenu

set history=9999

set scrolloff=3

if version >= 703
		set relativenumber
		set undofile
		set undodir=~/.vim/undodir/
else
		set number
endif

nnoremap <Space> <Nop>
let mapleader = " "

" By default whitespace will be hidden, but now it can be toggled with ,s.
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

"uswitch among e.g. if/elsif/else/end, between opening and closing XML tags, and more
runtime macros/matchit.vim

" ignore whitespace in vimdiff
set diffopt+=iwhite

" ease window navigation
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Left> <C-w>h
map <C-Right> <C-w>l

map ö :
map Ö :

set pastetoggle=<F12>

map <F10> :NERDTreeTabsToggle<CR>
map <F9> :MRU<CR>

" ******************

" plugin settings
let g:netrw_ftp_cmd="ftp -p"

let g:NERDTreeWinSize=45
let g:NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\~$', '\.pyc', 'target']

" use tmux in vim screen
let g:ScreenImpl = 'Tmux'

" set the pydiction_location to prevent errors when not editing python files
" and pressing tab
let g:pydiction_location=""

" no session autosaving for terminal vim
let g:session_autosave = 0
let g:session_autoload = 0

" enable ragtag
let g:ragtag_global_maps = 1 

source ~/.vim/neocompl.vim
