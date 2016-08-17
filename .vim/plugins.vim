Plugin 'VundleVim/Vundle.vim'

" ***** IDE like features
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" vim-session requires vim-misc
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" easily open files, press <leader>n for fuzzy finding, F7 for buffers, F9 for
" mru
Plugin 'kien/ctrlp.vim'

" show taglist with <F11>
Plugin 'Tagbar'

" search code
Plugin 'mileszs/ack.vim'

" ***** themes *****
Plugin 'altercation/vim-colors-solarized'

" ***** motion *****
" move to words with <leader><leader>w etc.
Plugin 'EasyMotion'

" ***** edit helper *****
" autoclose quotes, parens, brackets, etc and place cursor between them
Plugin 'Raimondi/delimitMate'

" toggle linecomment with <leader>ci
Plugin 'scrooloose/nerdcommenter'

" surround.vim: quoting/parenthesizing made simple
Plugin 'surround.vim'

" enable repeat key for plugins
Plugin 'tpope/vim-repeat'

" auto-completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'

" help aligning tables, e.g. :Tabularize /|
Plugin 'godlygeek/tabular'

" https://github.com/tpope/vim-speeddating — speeddating.vim: use
" CTRL-A/CTRL-X to increment dates, times, and more
Plugin 'tpope/vim-speeddating'

" highlight and strip (trailing) whitespace
Plugin 'ntpeters/vim-better-whitespace'


" **** language specific plugins
" automatically update the serial number in Bind DNS zone files
Plugin 'zauberpony/UpdateDNSSerial'

" html/tag helper
Plugin 'mattn/emmet-vim'
" highlight the matching html tag
Plugin 'MatchTag'

" markdown markup
Plugin 'hallison/vim-markdown'

" puppet
Plugin 'rodjek/vim-puppet'

" Dockerfile syntax
Plugin 'ekalinin/Dockerfile.vim'

" syntax checker
Plugin 'scrooloose/syntastic'

"Plugin 'leafgarland/typescript-vim'
Plugin 'lambdatoast/elm.vim'

" javascript
"Plugin 'hallettj/jslint.vim'
"Plugin 'pangloss/vim-javascript'

" better json support
Plugin 'elzr/vim-json'

" match % for python
"Plugin 'python_match.vim'

Plugin 'derekwyatt/vim-scala'

" ansible yaml markup
Plugin 'chase/vim-ansible-yaml'

" nix lang
Plugin 'LnL7/vim-nix'


" ***** VCS integration
" git integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" vim mergetool, https://github.com/idanarye/vim-merginal
Plugin 'idanarye/vim-merginal'

" addon for fugitive, browse file history with :Extradite
Plugin 'int3/vim-extradite'
