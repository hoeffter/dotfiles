 set nocompatible               " be iMproved
 filetype off                   " required!
 
 
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'tpope/vim-surround'
 Bundle 'tpope/vim-markdown'
 Bundle 'tpope/vim-repeat'
 Bundle 'altercation/vim-colors-solarized.git'
 Bundle 'scrooloose/nerdtree'
 Bundle 'hsitz/VimOrganizer'
 Bundle 'msanders/snipmate.vim'
 Bundle 'Raimondi/delimitMate'
 Bundle 'vim-ruby/vim-ruby'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 " ...

 filetype on     "enable filetype detection 
 filetype indent on "Enable filetype-specific indenting
 filetype plugin on "Enable filetype-specific plugins

 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

syntax enable
set background=dark
colorscheme solarized
"die schrift auf consolas und schriftgröße 14 ändern
set guifont=consolas:h14
"den nerdtree bei drücken auf F2 anzeigen/ausblenden
map <silent> <F2> :NERDTreeToggle %:p:h<CR> "toggle nerdtree (from http://stackoverflow.com/a/4170276)
"set autochdir "automatisch in das Verzeichnis der Datei wechseln, die gerade bearbeitet wird
set clipboard=unnamed "alles in die windows zwischenablage packen, damit man zwischen vim und anderen programmen copy&pasten kann
set number "activate linenumbers
set guioptions-=T "remove toolbar
set guioptions-=m "remove menubar
set hlsearch " search highlighting
set cursorline " highlight current line
set bs=2 "allow backspacing in insert mode
set autoread "auto read when file is changed from outside
set showmode " Show current mode
set autoindent " auto indentation
set ignorecase " ignore case when searching
let mapleader=","
let g:mapleader=","
set nobackup "no *~ backup files
compiler ruby
