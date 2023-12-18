return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"windwp/nvim-autopairs",
		"RRethy/nvim-treesitter-endwise",
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = { "lua", "vim", "vimdoc" },

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = true,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			highlight = {
				enable = true,
			},

			autotag = {
				enable = true,
			},

			endwise = {
				enable = true,
			},
		})
		require("nvim-autopairs").setup()

		vim.g.skip_ts_context_commentstring_module = true
	end,
}
