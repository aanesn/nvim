return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"saghen/blink.cmp",
	},
	config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
			callback = function(event)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = event.buf, desc = "goto definition" })
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = event.buf, desc = "show docs" })
				vim.keymap.set("n", "J", vim.diagnostic.open_float, { buffer = event.buf, desc = "show error" })
			end,
		})
		vim.diagnostic.config({ signs = false })

		local servers = {
			rust_analyzer = {},
			clangd = {},
			ts_ls = {},
			html = {},
			cssls = {},
			tailwindcss = { settings = { tailwindCSS = { classFunctions = { "cva", "cx" } } } },
			svelte = {},
			lua_ls = {},
			pyright = {},
		}

		local ensure_installed = vim.tbl_keys(servers or {})
		vim.list_extend(ensure_installed, {
			"prettier",
			"stylua",
		})
		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		local capabilities = require("blink.cmp").get_lsp_capabilities()
		require("mason-lspconfig").setup({
			ensure_installed = {},
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					server.capabilities = capabilities
					require("lspconfig")[server_name].setup(server)
				end,
			},
		})
	end,
}
