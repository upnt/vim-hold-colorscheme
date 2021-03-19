f = io.open(vim.g.colorschemepath..'/colorscheme.txt', "r")
for line in f:lines() do
	vim.cmd('colorscheme '..line)
end
f:close()
