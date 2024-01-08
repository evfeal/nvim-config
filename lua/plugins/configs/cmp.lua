return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'onsails/lspkind.nvim'
    },
    config = function()
        -- Set up nvim-cmp.
        local cmp = require'cmp'
        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        local lspkind = require('lspkind')

        cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
        )

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            window = {
                -- completion = cmp.config.window.bordered(),
                -- documentation = cmp.config.window.bordered(),
            },
            mapping = {
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<CR>"] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true,
                },
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif require("luasnip").expand_or_jumpable() then
                        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
                    else
                        fallback()
                    end
                end, {
                "i",
                "s",
            }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif require("luasnip").jumpable(-1) then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
                else
                    fallback()
                end
            end, {
            "i",
            "s",
        }),
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = 'text_symbol', -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
        })
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
        { name = "path" },
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Lua
require('lspconfig')['lua_ls'].setup {
    capabilities = capabilities,
    cmd = { "bun", "run", "lua-language-server", "--stdio" }
}

-- C & C++
require('lspconfig')['clangd'].setup {
    capabilities = capabilities,
    cmd = { "bun", "run", "clangd" }
}

-- Python
require('lspconfig')['pylsp'].setup {
    capabilities = capabilities,
    cmd = { "bun", "run", "pylsp" }
}

-- HTML & CSS
require('lspconfig')['html'].setup {
    capabilities = capabilities,
    cmd = { "bun", "run", "vscode-html-language-server", "--stdio" }
}

require('lspconfig')['cssls'].setup {
    capabilities = capabilities,
    cmd = { "bun", "run", "vscode-css-language-server"}
}

-- JS & TS
require('lspconfig')['tsserver'].setup {
    capabilities = capabilities,
    cmd = { "bun", "run", "typescript-language-server", "--stdio" }
}

-- Svelte
require('lspconfig')['svelte'].setup {
    capabilities = capabilities,
    cmd = { "bun", "run", "svleteserver" }
}

-- Emmet
require('lspconfig')['emmet_language_server'].setup {
    capabilities = capabilities,
    cmd = { "bun", "run", "emmet-language-server", "--stdio"}
}

    end
}
