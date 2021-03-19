if !exists('g:colorschemepath')
    g:colorschemepath = stdpath('config')
endif

if !isdirectory(g:colorschemepath)
    print('can not find ' . g:colorschemepath)
    finish
endif

if !filereadable(g:colorschemepath . 'colorscheme.txt')
    lua >> EOF
    f = io.open(vim.g.colorschemepath..'/colorscheme.txt', "w")
    f:write('default')
    f:close()
    EOF
endif

augroup VimHoldColorscheme
    au!
    au SourcePost * lua require('load_colorscheme')
    au ExitPre * lua require('save_colorscheme')
augroup END
