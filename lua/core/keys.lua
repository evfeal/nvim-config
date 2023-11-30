-- LOCALS
local map = vim.api.nvim_set_keymap

-- KEYMAPS
vim.g.mapleader = " "

--- PLUGINS
-- Nvim-Tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<C-m>", ":NvimTreeFocus<CR>", { silent = true })

-- Telescope
map("n", "<leader>ff", ":Telescope find_files <CR>", { silent = true })
map("n", "<leader>fg", ":Telescope live_grep <CR>", { silent = true })
map("n", "<leader>fm", ":Telescope marks <CR>", { silent = true })
map("n", "<leader>fb", ":Telescope buffers <CR>", { silent = true })

-- Nvim-Surround
map("n", "gcv", "ysiw\"", { silent = true })
map("n", "gdv", "ds\"", { silent = true })
