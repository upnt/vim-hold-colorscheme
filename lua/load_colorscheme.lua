f = io.open(vim.g.colorschemepath..'/colorscheme.txt', "r")
for line in f:lines() do
	vim.cmd('colorscheme '..line)
    vim.cmd('colorscheme')
end
f:close()
