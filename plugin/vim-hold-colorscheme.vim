if !exists('g:colorschemepath')
    finish
endif

augroup VimHoldColorscheme
    au!
    au SourcePost * lua require('load_colorscheme')
    au ExitPre * lua require('save_colorscheme')
augroup END
