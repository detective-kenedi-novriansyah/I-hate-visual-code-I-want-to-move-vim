" The MIT License (MIT)
"
" Copyright (c) 2013-2014 Evgeni Kolev

if !strlen($TMUX) || !executable('tmux')
  command! -nargs=* Tmuxline echoerr ":Tmuxline should be executed in a tmux sesssion"
  finish
endif

command! -nargs=* -bar -complete=customlist,tmuxline#command_completion#complete_themes_and_presets Tmuxline call tmuxline#set_statusline(<f-args>)
command! -nargs=1 -bang -complete=file -bar TmuxlineSnapshot call tmuxline#snapshot(<f-args>, strlen("<bang>"))
command! -nargs=? TmuxlineSimple call tmuxline#set_statusline_simple(<f-args>)


let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

let g:tmuxline_theme = {
    \   'a'    : [ 236, 103 ],
    \   'b'    : [ 253, 239 ],
    \   'c'    : [ 244, 236 ],
    \   'x'    : [ 244, 236 ],
    \   'y'    : [ 253, 239 ],
    \   'z'    : [ 236, 103 ],
    \   'win'  : [ 103, 236 ],
    \   'cwin' : [ 236, 103 ],
    \   'bg'   : [ 244, 236 ],
    \ }
