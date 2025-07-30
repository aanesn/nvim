return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			hijack_cursor = true,
			view = {
				width = 40,
				side = "right",
			},
			renderer = {
				highlight_git = true,
				special_files = {},
				icons = {
					show = {
						file = false,
						git = false,
						modified = false,
						diagnostics = false,
						bookmarks = false,
					},
				},
			},
			filters = {
				dotfiles = true,
			},
		})
	end,
}
