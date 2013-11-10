" enable utf-8 for vimrc, we use it for listchars
" freebsd has a problem with utf-8 in vimscripts
scriptencoding utf-8
set encoding=utf-8

" vundle
" set filetype off when sourcing vundle packages, so package ftdetect kicks in
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/ 
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

if ($TERM == 'screen-256')
		set ttyfast
endif


" **** visual settings ****
syntax on

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" show the current line as red bar
set cursorline
set cursorcolumn
hi CursorLine ctermbg=235 cterm=None
hi CursorColumn ctermbg=235

" I want a transparent background
hi Normal ctermbg=none 

" statusline appereance
set statusline=%<%F\ %h%m%r\ %y\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}
" always show statusline
set laststatus=2

set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set autowriteall
set hidden         " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set softtabstop=4

set hls
set ruler

set smartindent

set wildmenu
set wildmode=list:longest,full

set history=9999

set scrolloff=3

set modeline

if version >= 703
    set relativenumber
    set undofile
    set undodir=~/.vim/undodir/
else
    set number
endif

nnoremap <Space> <Nop>
let mapleader = " "

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" By default whitespace will be hidden, but now it can be toggled with ,s.
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

"uswitch among e.g. if/elsif/else/end, between opening and closing XML tags, and more
runtime macros/matchit.vim

" ignore whitespace in vimdiff
set diffopt+=iwhite

" ease window navigation
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Left> <C-w>h
map <C-Right> <C-w>l

map ö :
map Ö :

map <F5> :silent !xdg-open %<CR>
" show the yank ring
map <F6> :YRShow<CR>
" scroll to the current file in the nerdtree
map <F8> :NERDTreeFind<CR>
"  search through mru
map <F9> :CtrlPMRUFiles<CR>
map <F10> :NERDTreeTabsToggle<CR>
map <F11> :TagbarOpen fj<CR>
set pastetoggle=<F12>

" ******************

" plugin settings
let g:netrw_ftp_cmd="ftp -p"

let NERDTreeChDirMode=2 " set root dir cds into it as wd
let g:NERDTreeWinSize=45
let g:NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\~$', '\.pyc', 'target']

let g:NERDTreeMapActivateNode="<F8>"

" set the pydiction_location to prevent errors when not editing python files
" and pressing tab
let g:pydiction_location=""

" no session autosaving for terminal vim
let g:session_autosave = 0
let g:session_autoload = 0

" atomic saving — no longer enabled by default, enable via modeline etc. (if
" possible), but this prevents encrypting files with vim
" autocmd BufWriteCmd * call AtomicSave() 

source ~/.vim/neocompl.vim

" ctrlp
let g:ctrlp_working_path_mode = 2
let g:ctrlp_mruf_exclude='.*\.swp$'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

let g:ctrlp_map = '<leader>n'

map <leader>t :Tabularize /\|<cr>:sort u<CR>

let g:yankring_history_dir = '$HOME/.vim'


" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
