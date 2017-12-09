" don't bother with vi compatibility
set nocompatible
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Highlight current line
"set cursorline
" Show the cursor position
set ruler
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Automatically :write before running commands
set autowrite     
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
" enable syntax highlighting
syntax enable

"let g:python3_host_prog = 'C:\Users\hov\AppData\Local\Continuum\anaconda3\python.exe'
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'justinmk/vim-dirvish'
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'dracula/vim'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vimwiki/vimwiki'
"Plug 'mattn/vim-sqlfmt'
Plug 'ap/vim-buftabline'
Plug 'mpyatishev/vim-sqlformat'
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
set number

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
"let mapleader = ','
let g:mapleader = ','

" Fast saving
nmap <leader>w :w!<cr>

set wildmenu
set wildmode=list:longest,full

set mouse=a

let g:startify_bookmarks = [ {'c': '~/.vimrc'}, '~/.zshrc' ]
"Mappings
map <leader>nn :NERDTreeToggle<cr>
imap jk <Esc>

" Height of the command bar
"set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set matchtime=2

" Enable syntax highlighting
syntax enable 

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set noswapfile

" Don't show modes because lightline is doing this
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
set linebreak
set textwidth=500
set autoindent "Auto indent
set smartindent "Smart indent
set wrap "Wrap lines

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set clipboard=unnamed

set laststatus=2

""""""""""""""""""""""""""""""
"Colors
""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
	  
""""""""""""""""""""""""""""""
"Line Numbers should be relative
""""""""""""""""""""""""""""""
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"""""""""""""""""""""""""""""""
"VimWiki
"""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki'}]

"let g:sqlfmt_program = "sqlfmt"

"Deoplete
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#auto_complete_delay = 0
"Font
set guifont=Ubuntu\ Mono:h14
