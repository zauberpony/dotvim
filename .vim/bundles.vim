Bundle 'gmarik/vundle'

" ***** IDE like interface *****
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" session manager, restore windows
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session' 
" toggle between one and multi window with <C-w>o
Bundle 'ZoomWin' 

" git integration
Bundle 'tpope/vim-fugitive' 
Bundle "airblade/vim-gitgutter"

" addon for fugitive, browse file history with :Extradite
Bundle 'int3/vim-extradite' 

" easily open files, press <leader>n for fuzzy finding, F7 for buffers, F9 for
" mru
Bundle 'kien/ctrlp.vim'

" show taglist with <F11>
Bundle 'Tagbar'

" search code
Bundle 'mileszs/ack.vim'

" ***** themes *****
Bundle 'Lucius'
Bundle 'wombat256.vim'

Bundle "altercation/vim-colors-solarized"

Bundle 'bling/vim-airline'

" ***** visual addons *****
 
" show the matching bracket in the statusbar if not in the same line
Bundle 'matchparenpp'
" highlight the matching html tag
Bundle 'MatchTag'

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

" interactive replace
Bundle "hwrod/interactive-replace"

" toggle linecomment with <leader>ci
Bundle 'scrooloose/nerdcommenter'

Bundle 'surround.vim'

" enable repeat key for plugins
Bundle 'tpope/vim-repeat'

" auto-completion
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'

" help aligning tables, e.g. :Tabularize /|
Bundle 'godlygeek/tabular'

" history for registers
Bundle 'YankRing.vim'

Bundle 'tpope/vim-speeddating'

" ***** language/file support *****

" automatically update the serial number in Bind DNS zone files
Bundle 'zauberpony/UpdateDNSSerial'

" go
Bundle 'jnwhiteh/vim-golang'

" coffeescript
Bundle 'vim-coffee-script'
Bundle 'coffee-check.vim'
Bundle "leafgarland/typescript-vim"

" javascript
Bundle 'hallettj/jslint.vim'
Bundle 'pangloss/vim-javascript'

" clojure
Bundle 'VimClojure'

" html/tag helper
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" bashscript
Bundle 'bash-support.vim'

" nagios/icinga config files
Bundle 'nagios-syntax'

" markdown markup
Bundle 'hallison/vim-markdown'

" rails/ruby
Bundle "tpope/vim-rails"
Bundle "sandeepravi/refactor-rails.vim"
Bundle "MarcWeber/vim-addon-ruby-debug-ide"
Bundle "lucapette/vim-ruby-doc.git"
Bundle "ecomba/vim-ruby-refactoring"
Bundle "tpope/vim-cucumber"
Bundle "vim-ruby/vim-ruby"

" puppet
Bundle "rodjek/vim-puppet"

Bundle "LaTeX-Suite-aka-Vim-LaTeX"
