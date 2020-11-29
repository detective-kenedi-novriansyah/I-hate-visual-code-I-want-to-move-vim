Plug 'mildred/vim-bufmru'


" Alt-B or Alt-Shift-B to navigate buffers in insert mode and normal mode
imap <A-B> <C-O>:BufMRUPrev<CR>
imap <A-b> <C-O>:BufMRUNext<CR>
map <A-B> :BufMRUPrev<CR>
map <A-b> :BufMRUNext<CR>
nmap <Esc>B :BufMRUPrev<CR>
nmap <Esc>b :BufMRUNext<CR>

" Key above escape (on french keyboards) to commit current buffer as last
" used
map ² :BufMRUCommit<CR>

" Tab and Shift-Tab in normal mode to navigate buffers
map <Tab> :BufMRUNext<CR>
map <S-Tab> :BufMRUPrev<CR>
