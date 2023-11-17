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
        event = "VeryLazy",
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
        opts = function()
            return require 'plugins.configs.ibl'
        end,
        config = function(_, opts)
            require('ibl').setup(opts)
        end,
    },

    {
        'petertriho/nvim-scrollbar',
        event = "VeryLazy",
        opts = function()
            return require 'plugins.configs.scrollbar'
        end,
        config = function(_, opts)
            require('scrollbar').setup(opts)
        end,
    },

    {
        'karb94/neoscroll.nvim',
        event = "VeryLazy",
        opts = {}
    },

    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        event = "VeryLazy",
        opts = {},
    },

    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    };

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
        "nvim-telescope/telescope.nvim",
        dependencies = {
            'nvim-lua/plenary.nvim',
	        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },
        event = "VeryLazy",
        config = function()
            require('telescope').setup()
            require('telescope').load_extension('fzf')
        end,
    },

    {
        'NvChad/nvim-colorizer.lua',
        event = "VeryLazy",
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
        event = "InsertEnter",
        opts = {}
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}

    },

    {
        'folke/zen-mode.nvim',
        dependencies = "folke/twilight.nvim",
	    cmd = "ZenMode",
        opts = function()
            return require 'plugins.configs.zenmode'
        end,
        config = function(_, opts)
            require('zen-mode').setup(opts)
        end,
    },
}
