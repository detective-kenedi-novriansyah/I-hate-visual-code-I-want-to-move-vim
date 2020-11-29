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

colorscheme windflower

let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.9/bin/python3'

let g:node_host_prog = '/usr/local/bin/neovim-node-host'

let g:ruby_host_prog = 'rvm system do neovim-ruby-host'
