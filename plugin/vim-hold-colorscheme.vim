if !exists('g:colorschemepath')
    let g:colorschemepath = expand('~/.cache/colorscheme')
endif

if !isdirectory(g:colorschemepath)
    call mkdir(g:colorschemepath, "p")
endif

if !filereadable(g:colorschemepath . '/colorscheme.txt')
    lua require('setup')
endif

augroup VimHoldColorscheme
    au!
    au SourcePost * lua require('load_colorscheme')
    au ExitPre * lua require('save_colorscheme')
augroup END
