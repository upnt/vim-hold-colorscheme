augroup VimHoldColorscheme
    au!
    au VimEnter * lua require('load_colorscheme')
    au VimLeave * lua require('save_colorscheme')
augroup END
