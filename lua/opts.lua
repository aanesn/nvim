vim.o.number = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.swapfile = false
vim.o.scrolloff = 4
vim.o.signcolumn = "yes"

-- indentation
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true

-- persistent copy and undo
vim.o.clipboard = "unnamedplus"
vim.o.undofile = true

-- colors
vim.o.termguicolors = true
vim.o.background = "dark"

-- fix search
vim.o.ignorecase = true
vim.o.smartcase = true

-- rm bloat
vim.o.laststatus = 0
vim.g.netrw_banner = 0
vim.opt.fillchars:append({
	eob = " ",
	vert = " ",
})
