Bundle 'gmarik/vundle'

" ***** IDE like interface *****
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" session manager, restore windows
Bundle 'xolox/vim-session' 
" toggle between one and multi window with <C-w>o
Bundle 'ZoomWin' 

" git integration
Bundle 'fugitive.vim' 

" addon for fugitive, browse file history with :Extradite
Bundle 'int3/vim-extradite' 

" use vim as pager
" Bundle 'vimpager' 

" easily open files, press <leader>n for fuzzy finding, F7 for buffers, F9 for
" mru
Bundle 'kien/ctrlp.vim'

" show the matching bracket in the statusbar if not in the same line
Bundle 'matchparenpp'
" highlight the matching html tag
Bundle 'MatchTag'

" show taglist with <F11>
Bundle 'Tagbar'

" execute a command in a tmux pane
Bundle 'benmills/vimux'

" ***** themes *****
Bundle 'Lucius'
Bundle 'wombat256.vim'

" ***** motion *****
" move to words with <leader><leader>w etc.
Bundle 'EasyMotion'
" match % for python
Bundle 'python_match.vim' 

" ***** edit helper *****
" autoclose quotes, parens, brackets, etc and place cursor between them
Bundle 'Raimondi/delimitMate'

" syntax checker ?
Bundle 'Syntastic' 

" toggle linecomment with \\\
Bundle 'commentary.vim' 
Bundle 'surround.vim'

" enable repeat key for plugins
Bundle 'tpope/vim-repeat'

" auto-completion
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'

" help aligning tables, e.g. :Tabularize /|
Bundle 'godlygeek/tabular'

" Atomic-Save, to work in conjunction with e.g. inotifywait
Bundle "Atomic-Save"

" history for registers
Bundle 'YankRing.vim'

Bundle 'tpope/vim-speeddating'

" ***** language/file support *****

" automatically update the serial number in Bind DNS zone files
Bundle 'UpdateDNSSerial'

" go
Bundle 'jnwhiteh/vim-golang'

" coffeescript
Bundle 'vim-coffee-script'
Bundle 'coffee-check.vim'

" javascript
Bundle 'itspriddle/vim-jquery'
Bundle 'hallettj/jslint.vim'
Bundle 'pangloss/vim-javascript'

" scala
Bundle 'derekwyatt/vim-scala.git'

" clojure
Bundle 'VimClojure'

" html/tag helper
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" bashscript
Bundle 'bash-support.vim'

" nagios/icinga config files
Bundle 'nagios-syntax'

" lesscss
Bundle 'zauberpony/less-syntax'


" ***** fun *******

" show the files on which we spent most time editing
Bundle 'tacahiroy/vim-bestfriend'

" Twitter Client
Bundle 'TwitVim'
