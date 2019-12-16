if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/.vim/plugins.vim

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

" include vim powerline
python3 sys.path.append('/usr/lib/python3/dist-packages')
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

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
    set undodir=~/.cache/vim-undo
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
" runtime macros/matchit.vim

" ignore whitespace in vimdiff
set diffopt+=iwhite

" ease window navigation
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Left> <C-w>h
map <C-Right> <C-w>l

map ö :
map Ö :

" scroll to the current file in the nerdtree
" map <F8> :NERDTreeFind<CR>
"  search through mru
map <F10> :NERDTreeTabsToggle<CR>
" map <F11> :TagbarOpen fj<CR>
set pastetoggle=<F12>

" ******************

" plugin settings
" passive mode for netnrw ftp
let g:netrw_ftp_cmd="ftp -p"

" let NERDTreeChDirMode=2 " set root dir cds into it as wd
" let g:NERDTreeWinSize=45
" let g:NERDTreeShowBookmarks=1
" let NERDTreeIgnore = ['\~$', '\.pyc', 'target']

" let g:NERDTreeMapActivateNode="<F8>"

" let g:nerdtree_tabs_autofind=1

" set the pydiction_location to prevent errors when not editing python files
" and pressing tab
let g:pydiction_location=""

map <leader>t :Tabularize /\|<cr>:sort u<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" setup fzf (use with :fzf)
source /usr/share/doc/fzf/examples/fzf.vim
