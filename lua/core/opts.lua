-- SYSTEM
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.updatetime = 50
vim.opt.clipboard = 'unnamedplus'
vim.opt.hidden = true

-- APPEARANCE
vim.opt.termguicolors = true
vim.opt.number = true

vim.cmd([[colorscheme gruvbox]])

-- INDENT
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.scrolloff = 8

-- SEARCH
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
