if !exists('g:colorschemepath')
    let g:colorschemepath = stdpath('config')
endif

if !isdirectory(g:colorschemepath)
    echo 'can not find colorscheme directory'
    finish
endif

if !filereadable(g:colorschemepath . '/colorscheme.txt')
    lua require('setup')
endif

augroup VimHoldColorscheme
    au!
    au SourcePost * lua require('load_colorscheme')
    au ExitPre * lua require('save_colorscheme')
augroup END
