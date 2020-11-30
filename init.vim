" =======================================
" 	Configure VIM
" 	Author: Kenedi Novriansyah
" 	From: Indonesian
" =======================================

call plug#begin('~/.configure/nvim/autoload')

source $HOME/.config/nvim/paths/knd-init.vim
if !empty(glob("~/.config/nvim/paths/knd-ftdetect.vim"))
	source $HOME/.config/nvim/paths/knd-ftdetect.vim
endif
if !empty(glob("~/.config/nvim/paths/knd-syntax.vim"))
	source $HOME/.config/nvim/paths/knd-syntax.vim
endif

if !empty(glob("~/.config/nvim/paths/knd-ftplugin.vim"))
	source $HOME/.config/nvim/paths/knd-ftplugin.vim
endif

" if !empty(glob("~/.config/nvim/paths/knd-colorschema.vim"))
" 	source $HOME/.config/nvim/paths/knd-colorschema.vim
" endif

" colors schema

Plug 'mushanyoung/vim-windflower'

call plug#end()

function! s:env(var) abort
  return exists('*DotenvGet') ? DotenvGet(a:var) : eval('$'.a:var)
endfunction

function! s:expand(expr) abort
  return exists('*DotenvExpand') ? DotenvExpand(a:expr) : expand(a:expr)
endfunction


colorscheme windflower

let g:python_host_prog = s:env('python')
let g:python3_host_prog = s:env('python3')
let g:node_host_prog = s:env('node')
let g:ruby_host_prog = s:env('ruby')

