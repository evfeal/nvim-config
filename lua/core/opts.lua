-- SYSTEM
vim.opt.swapfile = false
vim.opt.shadafile = "NONE"
vim.opt.backup = false
vim.opt.updatetime = 50
vim.opt.clipboard = 'unnamedplus'
vim.opt.hidden = true

-- APPEARANCE
vim.opt.termguicolors = true
vim.opt.number = true

-- INDENT
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

-- SEARCH
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- DISABLED
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin"
}

for _, plugin in pairs(disabled_built_ins) do
	vim.g["loaded_" .. plugin] = 1
end

-- EOF
vim.opt.shadafile = ""
