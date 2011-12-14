" vundle
" set filetype off when sourcing vundle packages, so package ftdetect kicks in
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

Bundle 'gmarik/vundle'

" ***** interface *****
Bundle 'The-NERD-tree'
" most recently used files, <F9>
Bundle 'mru.vim'
" session manager, restore windows
Bundle 'xolox/vim-session' 
" toggle between one and multi window with <C-w>o
Bundle 'ZoomWin' 
" Bundle 'TwitVim'
" use vim as pager
Bundle 'vimpager' 


" git integration
Bundle 'fugitive.vim' 
" addon for fugitive, browse file history
Bundle 'extradite.vim' 



" show the matching bracket in the statusbar if not in the same line
Bundle 'matchparenpp'
" highlight the matichng html tag
Bundle 'MatchTag'



" tab completion for searchterms when searching with /
Bundle 'SearchComplete' 
" show number of matched items when searching
Bundle 'IndexedSearch' 


" ***** motion *****
Bundle 'EasyMotion'
" extended jumping with %
Bundle 'matchit.zip' 
"same for python
Bundle 'python_match.vim' 


" ***** edit helper *****
"autocompletion for quotes, parens, brackets, etc
Bundle 'Raimondi/delimitMate'
" syntax checker
Bundle 'Syntastic' 
" toggle linecomment with \\\
Bundle 'commentary.vim' 
Bundle 'surround.vim'
" enable repeat key for plugins
Bundle 'tpope/vim-repeat'


" ***** language supoort *****
Bundle 'jnwhiteh/vim-golang'
Bundle 'vim-coffee-script'
Bundle 'itspriddle/vim-jquery'
Bundle 'xmledit'
" Bundle 'Pydiction'
Bundle 'pangloss/vim-javascript'


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


" **** visual settings ****
syntax on
set background=dark

" show the current line as red bar
set cursorline
highlight CursorLine ctermbg=Red cterm=none

" statusline appereance
set statusline=%<%F\ %h%m%r\ %y\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}
" always show statusline
set laststatus=2
" *************************


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

set backspace=eol,start
set tabstop=4

set hls
set ruler

set smartindent

if version >= 703
		set relativenumber

		set undofile
		set undodir=~/.vim/undodir/
else
		set number
endif

"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.


" ignore whitespace in vimdiff
set diffopt+=iwhite

" **** mappings ****

let mapleader = ","

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

map <F10> :NERDTreeToggle<CR>
map <F9> :MRU<CR>

" ******************

" plugin settings
let g:netrw_ftp_cmd="ftp -p"

let g:NERDTreeWinSize=45
let g:NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\~$', '\.pyc']

" set the pydiction_location to prevent errors when not editing python files
" and pressing tab
let g:pydiction_location=""

" no session autosaving for terminal vim
let g:session_autosave = 0
let g:session_autoload = 0
