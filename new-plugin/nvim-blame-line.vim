Plug 'tveskag/nvim-blame-line'
Plug 'APZelos/blamer.nvim'

autocmd BufEnter * EnableBlameLine

nnoremap <silent> <leader>b :ToggleBlameLine<CR>

" Show blame info below the statusline instead of using virtual text
let g:blameLineUseVirtualText = 0

" Specify the highlight group used for the virtual text ('Comment' by default)
let g:blameLineVirtualTextHighlight = 'Question'

" Add a prefix to the virtual text (empty by default)
let g:blameLineVirtualTextPrefix = '// '

" Customize format for git blame (Default format: '%an | %ar | %s')
let g:blameLineGitFormat = '%an - %s'
" Refer to 'git-show --format=' man pages for format options)
"
" Blamer NVIM

let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 1
let g:blamer_show_in_insert_modes = 1
let g:blamer_prefix = ' > '
let g:blamer_template = '<committer> <summary>'
let g:blamer_date_format = '%d/%m/%y %H:%M'


let g:blamer_relative_time = 1
highlight Blamer guifg=lightgrey
