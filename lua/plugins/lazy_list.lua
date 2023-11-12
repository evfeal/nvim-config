-- PLUGINS

return {
    -- APPEARANCE
    {
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
    },

    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'windwp/nvim-ts-autotag',
        },
        opts = function()
            return require 'plugins.configs.treesitter'
        end,
        config = function(_, opts)
            require('nvim-treesitter.configs').setup(opts)
        end,
    },

    {
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        event = "VeryLazy",
        opts = {},
    },

    {
        'petertriho/nvim-scrollbar',
        opts = function()
            return require 'plugins.configs.scrollbar'
        end,
        config = function(_, opts)
            require('scrollbar').setup(opts)
        end,
    },

    -- UTILITIES
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
        opts = {},
    },

    {
        'NvChad/nvim-colorizer.lua',
        opts = {},
        config = function(_, opts)
            require("colorizer").setup(opts)

            -- execute colorizer as soon as possible
            vim.defer_fn(function()
                require("colorizer").attach_to_buffer(0)
            end, 0)
        end,
    },
 
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },

    {
        'numToStr/Comment.nvim',
        opts = {}
    },
 
    {
        'windwp/nvim-autopairs',
        opts = {},
        
    },
}
