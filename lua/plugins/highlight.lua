return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"rust",
			"c",
			"lua",
			"python",
			"javascript",
			"typescript",
			"html",
			"css",
			"svelte",
			"toml",
			"json",
			"yaml",
			"markdown",
			"gitignore",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}
