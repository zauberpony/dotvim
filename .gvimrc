" Auto change the directory to the current file I'm working on
" autocmd BufEnter * lcd %:p:h
"

set background=light
let g:solarized_contrast="high"
colorscheme solarized

" autosave on focus lost
autocmd FocusLost * :wa

" default aegimrLtT
set guioptions=aegimrLt

" do not open nerdtree in gvim on startup
let g:nerdtree_tabs_open_on_gui_startup=1

let g:session_autosave='yes'
let g:session_autoload='yes'
let g:session_default_to_last='yes'
