return {
	"anAcc22/sakura.nvim",
	dependencies = "rktjmp/lush.nvim",
	config = function()
		vim.cmd("colorscheme sakura")
		vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
	end,
}
