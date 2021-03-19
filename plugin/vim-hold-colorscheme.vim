if !exists('g:colorschemepath')
    let g:colorschemepath = stdpath('config')
endif

if !isdirectory(g:colorschemepath)
    mkdir(g:colorschemepath)
endif

if !filereadable(g:colorschemepath . '/colorscheme.txt')
    lua require('setup')
endif

augroup VimHoldColorscheme
    au!
    au SourcePost * lua require('load_colorscheme')
    au ExitPre * lua require('save_colorscheme')
augroup END
