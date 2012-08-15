map <F5> :w<CR>:!service icinga reload<CR>


map <leader>t :Tabularize /^\s\+\w\+\s\+\zs<cr>
vmap <leader>t :Tabularize /^\s\+\w\+\s\+\zs<cr>


"function! IcingaReformat()
     "reindent everything that's indented
    ":%s/^\s\+\ze\w/    /

     "} is never idented
    ":%s/^\s\+}/}/

     "Tabularize the second column of definitions between {}
    ":%g/{\s*\n\zs\(\n\|.\)\{-}\ze}/g/^\s\+\w\+.*$/Tabularize /^\s\+\w\+\s\+\zs\ze\w\+
"endfunction
