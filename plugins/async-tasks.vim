Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'


let g:asyncrun_open = 6


noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f9> :AsyncTask file-build<cr>


let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_term_pos = 'bottom'


let g:asynctasks_term_rows = 10    " set height for the horizontal terminal split
let g:asynctasks_term_cols = 80    " set width for vertical terminal split

let g:asynctasks_profile = 'release'


let g:asynctasks_template = {}
let g:asynctasks_template.cargo = [
			\ "[project-init]",
			\ "command=cargo update",
			\ "cwd=<root>",
			\ "",
			\ "[project-build]",
			\ "command=cargo build",
			\ "cwd=<root>",
			\ "errorformat=%. %#--> %f:%l:%c",
			\ "",
			\ "[project-run]",
			\ "command=cargo run",
			\ "cwd=<root>",
			\ "output=terminal",
			\ ]
