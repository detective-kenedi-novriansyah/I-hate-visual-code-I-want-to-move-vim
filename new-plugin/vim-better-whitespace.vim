Plug 'ntpeters/vim-better-whitespace'

fun! BetterWhitespaceCurrentLineMode(type)
        " set setting to whatever was passed
        let g:current_line_whitespace_disabled_soft=a:type == 'soft'
        let g:current_line_whitespace_disabled_hard=a:type == 'hard'
        " reload plugin
        unlet! g:loaded_better_whitespace_plugin
        runtime plugin/better-whitespace.vim
        " Re-override the deprecated commands
        command! -nargs=1 CurrentLineWhitespaceOff call BetterWhitespaceCurrentLineMode(<f-args>)
        command! CurrentLineWhitespaceOn call BetterWhitespaceCurrentLineMode('off')
        " Manually trigger change for current buffer.
        " BufWinEnter will take care of the rest.
        filetype detect
endfun

" Override deprecated commands, after (!) loading plugin
command! -nargs=1 CurrentLineWhitespaceOff call BetterWhitespaceCurrentLineMode(<f-args>)
command! CurrentLineWhitespaceOn call BetterWhitespaceCurrentLineMode('off')
