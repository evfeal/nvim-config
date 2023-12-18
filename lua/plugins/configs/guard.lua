return {
	"nvimdev/guard.nvim",
	dependencies = {
		"nvimdev/guard-collection",
	},
	config = function()
		local ft = require("guard.filetype")

		ft("c"):fmt("clang-format")

		ft("lua"):fmt("stylua")

		ft("html,css,javascript,typescript,javascriptreact,typescriptreact"):fmt("prettier")

		-- Call setup() LAST!
		require("guard").setup({
			-- the only options for the setup function
			fmt_on_save = true,
			-- Use lsp if no formatter was defined for this filetype
			lsp_as_default_formatter = false,
		})
	end,
}
