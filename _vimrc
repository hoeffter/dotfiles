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
 Bundle 'msanders/snipmate.vim'
 Bundle 'altercation/vim-colors-solarized.git'
 Bundle 'scrooloose/nerdtree'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 " ...

 filetype plugin indent on     " required! 
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
set background=light
colorscheme solarized
"die schrift auf consolas und schriftgröße 14 ändern
set guifont=consolas:h14
"den nerdtree bei drücken auf F2 anzeigen/ausblenden
map <F2> :NERDTreeToggle<CR>
set autochdir "automatisch in das Verzeichnis der Datei wechseln, die gerade bearbeitet wird
set clipboard=unnamed "alles in die windows zwischenablage packen, damit man zwischen vim und anderen programmen copy&pasten kann
