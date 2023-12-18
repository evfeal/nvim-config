return {
	"williamboman/warden.nvim",
	event = "VeryLazy",
	config = function()
		vim.diagnostic.config({
			warden = {
				line_highlight = true,
			},
		})
	end,
}
