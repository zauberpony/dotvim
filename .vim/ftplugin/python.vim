map <F5> :w<CR>:!./"%"<CR>

setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal smarttab
setlocal softtabstop=4

let g:pydiction_location = "~/.vim/bundle/pydiction/complete-dict"
setlocal complete+=k~/bundle/pydiction/pydiction.py isk+=.,(
