setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
map <F5> :w<CR>:!./"%"<CR>

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

let g:pydiction_location = "~/.vim/bundle/pydiction/complete-dict"
set complete+=k~/bundle/pydiction/pydiction.py isk+=.,(
