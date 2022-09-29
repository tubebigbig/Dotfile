nnoremap <C-t>j :tabprevious<CR>
nnoremap <C-t>k :tabnext<CR>
nnoremap <C-t>t :tabnew .<CR>
nnoremap <C-t>h :tabfirst<CR>
nnoremap <C-t>l :tablast<CR>
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nnoremap <c-s> :w<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
