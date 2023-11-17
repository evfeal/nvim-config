-- LOCALS
local map = vim.api.nvim_set_keymap

-- KEYMAPS
vim.g.mapleader = " "

vim.keymap.set({"n", "v"}, "yy", [["+y]])
vim.keymap.set({"n", "v"}, "dd", [["_d]])

vim.keymap.set('n', '<ScrollWheelUp>', '<C-y>')
vim.keymap.set('n', '<ScrollWheelDown>', '<C-e>')
vim.keymap.set('i', '<ScrollWheelUp>', '<C-y>')
vim.keymap.set('i', '<ScrollWheelDown>', '<C-e>')
vim.keymap.set('v', '<ScrollWheelUp>', '<C-y>')
vim.keymap.set('v', '<ScrollWheelDown>', '<C-e>')

--- PLUGINS
-- Nvim-Tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<C-m>", ":NvimTreeFocus<CR>", { silent = true })

-- Telescope
map("n", "<leader>ff", ":Telescope find_files <CR>", { silent = true })
map("n", "<leader>fg", ":Telescope live_grep <CR>", { silent = true })
map("n", "<leader>fm", ":Telescope marks <CR>", { silent = true })
map("n", "<leader>fb", ":Telescope buffers <CR>", { silent = true })

-- Zen Mode
map("n", "<leader>zz", ":ZenMode <CR>", { silent = true })

-- Nvim-Surround
map("n", "gcv", "ysiw\"", { silent = true })
map("n", "gdv", "ds\"", { silent = true })
