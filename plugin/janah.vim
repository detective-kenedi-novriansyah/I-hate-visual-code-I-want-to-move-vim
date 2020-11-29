Plug 'liuchengxu/vim-which-key'

" On-demand lazy load
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }


nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

set timeoutlen=500
"let g:mapleader = "\<Space>"
"let g:maplocalleader = ','
"nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
"nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
"let g:which_key_map['w'] = {
"      \ 'name' : '+windows' ,
"      \ 'w' : ['<C-W>w'     , 'other-window']          ,
"      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
"      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
"      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
"      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
"      \ 'h' : ['<C-W>h'     , 'window-left']           ,
"      \ 'j' : ['<C-W>j'     , 'window-below']          ,
"      \ 'l' : ['<C-W>l'     , 'window-right']          ,
"      \ 'k' : ['<C-W>k'     , 'window-up']             ,
"      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
"      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
"      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
"      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
"      \ '=' : ['<C-W>='     , 'balance-window']        ,
"      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
"      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
"      \ '?' : ['Windows'    , 'fzf-window']            ,
"      \ }

"nnoremap <leader>1 :1wincmd w<CR>

"let g:which_key_map.f = { 'name' : '+file' }

"nnoremap <silent> <leader>fs :update<CR>
"let g:which_key_map.f.s = 'save-file'

"nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
"let g:which_key_map.f.d = 'open-vimrc'

"nnoremap <silent> <leader>oq  :copen<CR>
"nnoremap <silent> <leader>ol  :lopen<CR>
"let g:which_key_map.o = {
"      \ 'name' : '+open',
"      \ 'q' : 'open-quickfix'    ,
"      \ 'l' : 'open-locationlist',
"      \ }

"" =======================================================
"" Create menus not based on existing mappings:
"" =======================================================
"" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.)
"" and descriptions for the existing mappings.
""
"" Note:
"" Some complicated ex-cmd may not work as expected since they'll be
"" feed into `feedkeys()`, in which case you have to define a decicated
"" Command or function wrapper to make it work with vim-which-key.
"" Ref issue #126, #133 etc.
"let g:which_key_map.b = {
"      \ 'name' : '+buffer' ,
"      \ '1' : ['b1'        , 'buffer 1']        ,
"      \ '2' : ['b2'        , 'buffer 2']        ,
"      \ 'd' : ['bd'        , 'delete-buffer']   ,
"      \ 'f' : ['bfirst'    , 'first-buffer']    ,
"      \ 'h' : ['Startify'  , 'home-buffer']     ,
"      \ 'l' : ['blast'     , 'last-buffer']     ,
"      \ 'n' : ['bnext'     , 'next-buffer']     ,
"      \ 'p' : ['bprevious' , 'previous-buffer'] ,
"      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
"      \ }

"let g:which_key_map.l = {
"      \ 'name' : '+lsp',
"      \ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
"      \ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
"      \ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
"      \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
"      \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
"      \ 'g' : {
"        \ 'name': '+goto',
"        \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
"        \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
"        \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
"        \ },
"      \ }
"nnoremap <localleader> :<c-u>WhichKey  ','<CR>
"vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>

"autocmd! FileType which_key
"autocmd  FileType which_key set laststatus=0 noshowmode noruler
"  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
