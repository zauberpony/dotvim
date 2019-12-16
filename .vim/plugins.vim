call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'

Plug 'dense-analysis/ale'
Plug 'sirver/ultisnips'
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }

Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'
call plug#end()
