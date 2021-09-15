call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
call plug#end()

source ~/.vim/normal.vim
source ~/.vim/mapping.vim
source ~/.vim/statusline.vim


" ale
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'css': ['stylelint'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'javascriptreact': ['prettier', 'eslint'],
\   'css': ['stylelint', 'prettier']
\}
