" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
"set clipboard=unnamed
set clipboard=unnamedplus
" Enhance command-line completion
set wildmenu
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
" set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
set nu rnu

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

set splitbelow
set splitright

filetype plugin indent on

set hidden
" if has("nvim-0.5.0") || has("patch-8.1.1564")
  " " Recently vim can merge signcolumn and number column into one
  " set signcolumn=number
" else
  " set signcolumn=yes
" endif

highlight Pmenu ctermfg=250 ctermbg=235 guifg=#bcbcbc guibg=#262626
highlight PmenuSel ctermfg=250 ctermbg=131 guifg=#bcbcbc guibg=#af5f5f
" highlight link CocErrorLint NormalFloat
" highlight link CocWarningLine NormalFloat
" highlight link CocInfoLine NormalFloat
" highlight link CocHintLine NormalFloat
" highlight link CocSelectedLine PmenuSel
