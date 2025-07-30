return {
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = "rafamadriz/friendly-snippets",
	opts = {
		keymap = {
			preset = "none",
			["<C-j>"] = { "select_next", "fallback" },
			["<C-k>"] = { "select_prev", "fallback" },
			["<Tab>"] = { "accept", "fallback" },
		},
		appearance = { nerd_font_variant = "mono" },
		completion = { documentation = { auto_show = false } },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
		fuzzy = { implementation = "lua" },
	},
}
