"colorscheme lucius
"LuciusLight

" Auto change the directory to the current file I'm working on
" autocmd BufEnter * lcd %:p:h
"

set background=light
let g:solarized_contrast="high"
colorscheme solarized

let g:session_autosave = 1
let g:session_autoload = 1

" autosave on focus lost
autocmd FocusLost * :wa

" default aegimrLtT
set guioptions=aegirLt


