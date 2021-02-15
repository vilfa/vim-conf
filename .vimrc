set nocompatible				" Don't try to be vi compatible

set encoding=utf-8				" Encoding
set number						" Show line numbers
set linebreak					" Break lines at word (requires Wrap lines)
set showbreak=+++ 				" Wrap-broken line prefix
set textwidth=150				" Line wrap (number of cols)
set showmatch					" Highlight matching brace
set spell						" Enable spell-checking
set visualbell					" Use visual bell (no beeping)

set columns=140					" Set window width
set lines=40					" Set window height
 
set hlsearch					" Highlight all search results
set smartcase					" Enable smart-case search
set ignorecase					" Always case-insensitive
set incsearch					" Searches for strings incrementally
 
set autoindent					" Auto-indent new lines
set cindent						" Use 'C' style program indenting
set shiftwidth=4				" Number of auto-indent spaces
set smartindent					" Enable smart-indent
set smarttab					" Enable smart-tabs
set softtabstop=4				" Number of spaces per Tab
 
set ruler						" Show row and column ruler information
"set showtabline=2				" Show top tab bar
 
syntax on						" Turn on syntax highlighting
set autochdir					" Change working directory to open buffer
 
set undolevels=1000				" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set hidden						" Allow hidden buffers
set ttyfast 					" Rendering
set laststatus=2 				" Status bar
set showmode					" Last line
set showcmd						" Last line
set listchars=tab:▸\ ,eol:¬ 	" Visualize tabs and newlines

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Remap leader key
let leader=","
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Set theme
if has("gui_running")
	color base16-onedark
	set columns=999
	set lines=999
else
	colorscheme base16-onedark
endif

" Remember to first install YouCompleteMe and ycmd
" from the AUR package vim-youcompleteme-git
"
" Setup YouCompleteMe plugin code completion
" Setup ycmd code completion server
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_global_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_extra_conf_globlist=['~/dev/*','!~/*']
