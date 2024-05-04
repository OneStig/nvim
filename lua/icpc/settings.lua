vim.g.mapleader = " "

local home = os.getenv("HOME")
vim.g["cpa#dir"] = home .. "/Documents/GitHub/contests"
vim.g["cph#cpp#compile_command"] = "clang++ -std=c++20 solution.cpp -o cpp.out"

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4       -- Set the number of columns for a tab
vim.opt.shiftwidth = 4    -- Set the number of spaces per indent
vim.opt.expandtab = true -- Use spaces instead of tabs

vim.o.hlsearch = false
vim.o.incsearch = false

vim.cmd [[highlight clear MatchParen]]