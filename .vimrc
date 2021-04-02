"""""""""""
" General "
"""""""""""

set nocompatible				" Don't try to be vi compatible
set encoding=utf-8				" Encoding
set number						" Show line numbers
set linebreak					" Break lines at word (requires Wrap lines)
set showbreak=+++ 				" Wrap-broken line prefix
set textwidth=150				" Line wrap (number of cols)
set showmatch					" Highlight matching brace
set spell						" Enable spell-checking
set visualbell					" Use visual bell (no beeping)
set hlsearch					" Highlight all search results
set smartcase					" Enable smart-case search
set ignorecase					" Always case-insensitive
set incsearch					" Searches for strings incrementally
set autoindent					" Auto-indent new lines
set shiftwidth=4				" Number of auto-indent spaces
set tabstop=4					" Number of spaces per Tab
set noexpandtab					" Don't expand tabs
set smarttab					" Use smart tabs
set ruler						" Show row and column ruler information
set autochdir					" Change working directory to open buffer
set undolevels=1000				" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set hidden						" Allow hidden buffers
set ttyfast 					" Rendering
set laststatus=2 				" Status bar
set showmode					" Last line
set showcmd						" Last line
set listchars=tab:▸\ ,eol:¬		" Visualize tabs and newlines
syntax on						" Turn on syntax highlighting

""""""""""""""
" Appearance "
""""""""""""""

" Set theme and optimize for dark colors
set background=dark
if has("gui_running")
	color base16-gruvbox-dark-medium
	set columns=999
	set lines=999
else
	colorscheme base16-gruvbox-dark-medium
endif

""""""""
" Keys "
""""""""

"" Set key mappings
let mapleader=","
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>b :ls<CR>:b<Space>
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>t :term<CR>

""""""""""
" Plugins "
"""""""""""

"" NERDTree

" Show hidden files by default
let NERDTreeShowHidden=1

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

"" YouCompleteMe

" Setup the path to the global config file.
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_global_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_extra_conf_globlist=['~/dev/*','!~/*']
