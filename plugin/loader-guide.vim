Plug 'hecal3/vim-leader-guide'


" Define prefix dictionary
let g:lmap =  {}

" Second level dictionaries:
let g:lmap.f = { 'name' : 'File Menu' }
let g:lmap.o = { 'name' : 'Open Stuff' }
" 'name' is a special field. It will define the name of the group.
" leader-f is the "File Menu" group.
" Unnamed groups will show a default string

" Provide commands and descriptions for existing mappings
	nmap <silent> <leader>fd :e $MYVIMRC<CR>
	let g:lmap.f.d = ['e $MYVIMRC', 'Open vimrc']

	nmap <silent> <leader>fs :so %<CR>
	" let g:lmap.f.s = ['so %', 'Source file']

	nmap <silent> <leader>oo  :copen<CR>
	" let g:lmap.o.o = ['copen', 'Open quickfix']

	nmap <silent> <leader>ol  :lopen<CR>
	" let g:lmap.o.l = ['lopen', 'Open locationlist']

	nmap <silent> <leader>fw :w<CR>
	" let g:lmap.f.w = ['w', 'Write file']

" Create new menus not based on existing mappings:
let g:lmap.g = {
				\'name' : 'Git Menu',
				\'s' : ['Gstatus', 'Git Status'],
                \'p' : ['Gpull',   'Git Pull'],
                \'u' : ['Gpush',   'Git Push'],
                \'c' : ['Gcommit', 'Git Commit'],
                \'w' : ['Gwrite',  'Git Write'],
                \}

" If you use NERDCommenter:
let g:lmap.c = { 'name' : 'Comments' }
" Define some descriptions
let g:lmap.c.c = ['call feedkeys("\<Plug>NERDCommenterComment")','Comment']
let g:lmap.c[' '] = ['call feedkeys("\<Plug>NERDCommenterToggle")','Toggle']
" The Descriptions for other mappings defined by NerdCommenter, will default
" to their respective commands.
"
nnoremap <Plug>(open-vimrc) :e $MYVIMRC<CR>
nmap <leader>fd <Plug>(open-vimrc)

autocmd FileType gitcommit  noremap <buffer> <leader> <Plug>leaderguide-buffer
" for fugitive

autocmd BufEnter __Tagbar__  noremap <buffer> <leader> <Plug>leaderguide-buffer
" for tagbar
"
" " Bottom (default)
" let g:leaderGuide_vertical = 0
" let g:leaderGuide_position = 'botright'

" Top
let g:leaderGuide_position = 'topleft'

" Left
let g:leaderGuide_vertical = 1
let g:leaderGuide_position = 'topleft'

" Right
let g:leaderGuide_vertical = 1
let g:leaderGuide_position = 'botright'

" Special key mapping.
" Use <C-I> to map the Tab key
let g:lmap.g = {
				\'<C-I>' : ['Gstatus', 'Git Status'],
                \'<BS>'  : ['Gpull',   'Git Pull'],
                \'<C-P>' : ['Gpush',   'Git Push'],
                \'/'     : ['Gcommit', 'Git Commit'],
                \'<F4>'  : ['Gwrite',  'Git Write'],
                \' '     : ['ThisIsSpace',  'SomeDescription'],
                \}

" Call other mappings ( Trigger with <leader>, ):
let g:lmap[','] = ['call feedkeys("\<Plug>(easymotion-prefix)")', 'EasyMotion Prefix']
let g:leaderGuide_hspace = 5
let g:leaderGuide_run_map_on_popup = 0

