Bundle 'gmarik/vundle'

source ~/.vim/language-bundles.vim
source ~/.vim/vcs-bundles.vim

" ***** IDE like features
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Xuyuanp/nerdtree-git-plugin'
" vim-session requires vim-misc
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'

" easily open files, press <leader>n for fuzzy finding, F7 for buffers, F9 for
" mru
Bundle 'kien/ctrlp.vim'

" show taglist with <F11>
Bundle 'Tagbar'

" search code
Bundle 'mileszs/ack.vim'

" ***** themes *****
Bundle "altercation/vim-colors-solarized"

" ***** motion *****
" move to words with <leader><leader>w etc.
Bundle 'EasyMotion'

" ***** edit helper *****
" autoclose quotes, parens, brackets, etc and place cursor between them
Bundle 'Raimondi/delimitMate'

" toggle linecomment with <leader>ci
Bundle 'scrooloose/nerdcommenter'

" surround.vim: quoting/parenthesizing made simple 
Bundle 'surround.vim'

" enable repeat key for plugins
Bundle 'tpope/vim-repeat'

" auto-completion
Bundle "Valloric/YouCompleteMe"
Bundle "SirVer/ultisnips"

" help aligning tables, e.g. :Tabularize /|
Bundle 'godlygeek/tabular'

" https://github.com/tpope/vim-speeddating — speeddating.vim: use
" CTRL-A/CTRL-X to increment dates, times, and more 
Bundle 'tpope/vim-speeddating'
