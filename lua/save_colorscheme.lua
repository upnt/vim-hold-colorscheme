f = io.open(vim.g.colorschemepath..'/colorscheme.txt', "w")
f:write(vim.g.colors_name)
f:close()
