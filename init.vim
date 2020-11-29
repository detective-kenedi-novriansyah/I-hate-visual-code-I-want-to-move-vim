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

call plug#end()

