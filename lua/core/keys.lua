-- LOCALS
local map = vim.api.nvim_set_keymap

--- KEYMAPS
-- Nvim-Tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<C-m>", ":NvimTreeFocus<CR>", { silent = true })

-- Nvim-Surround
map("n", "gcv", "ysiw\"", { silent = true })
map("n", "gdv", "ds\"", { silent = true })
