require("scripts.remap")

local home = os.getenv("HOME")
vim.g["cpa#dir"] = home .. "/Documents/GitHub/cpa-cache/cache"

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4       -- Set the number of columns for a tab
vim.opt.shiftwidth = 4    -- Set the number of spaces per indent
vim.opt.expandtab = false -- Use tabs instead of spaces

vim.o.hlsearch = false
vim.o.incsearch = false

