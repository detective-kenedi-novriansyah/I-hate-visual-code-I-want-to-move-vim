Plug 'neovim/nvim-lsp' 
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'junegunn/fzf'
Plug 'autozimu/LanguageClient-neovim'

let g:LanguageClient_serverCommands = { 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],'javascript': ['/usr/local/bin/javascript-typescript-stdio'],'javascript.jsx': ['tcp://127.0.0.1:2089'],'python': ['/usr/local/bin/pyls'],'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],}

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

augroup filetype_rust
	    autocmd!
			autocmd BufReadPost *.rs setlocal filetype=rust
augroup END

				" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

set runtimepath+=~/.config/nvim/autoload/LanguageClient-neovim
