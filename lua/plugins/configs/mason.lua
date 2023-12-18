return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					---@since 1.0.0
					-- The list icon to use for installed packages.
					package_installed = " ",
					---@since 1.0.0
					-- The list icon to use for packages that are installing, or queued for installation.
					package_pending = " ",
					---@since 1.0.0
					-- The list icon to use for packages that are not installed.
					package_uninstalled = " ",
				},
			},
		})
	end,
}
