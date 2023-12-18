-- LOCALS
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--- GENERAL
vim.g.mapleader = " "

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Tab management
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--- PLUGINS
-- Nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<C-m>", ":NvimTreeFocus<CR>", opts)

-- Telescope
keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', {})
keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', {})
keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', {})
keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>', {})
