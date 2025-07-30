vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "toggle tree" })
vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", { desc = "restart lsp" })

vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-h>", { desc = "navigate left" })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-j>", { desc = "navigate down" })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-k>", { desc = "navigate up" })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-l>", { desc = "navigate right" })

vim.keymap.set("n", "gt", ":BufferLineCycleNext<CR>", { desc = "goto next tab" })
vim.keymap.set("n", "gT", ":BufferLineCyclePrev<CR>", { desc = "goto prev tab" })
