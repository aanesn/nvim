return {
	"akinsho/bufferline.nvim",
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				tab_size = 0,
				show_buffer_icons = false,
				buffer_close_icon = "",
				modified_icon = "",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				color_icons = false,
				indicator_icon = " ",
				separator_style = { "", "" },
			},
		})
		-- fix transparency
		vim.g.transparent_groups = vim.list_extend(
			vim.g.transparent_groups or {},
			vim.tbl_map(function(v)
				return v.hl_group
			end, vim.tbl_values(require("bufferline.config").highlights))
		)
	end,
}
