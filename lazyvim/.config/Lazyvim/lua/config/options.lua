-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.maplocalleader = ","
vim.g.foldlevelstart = 3
-- vim.opt.formatoptions:remove({ "c", "r", "o" })

vim.opt.formatoptions = "jqlnt"

-- vim.opt.tabline = 0

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- vim.opt.foldlevelstart = 1

vim.opt.swapfile = false

vim.opt.foldlevel=99

vim.opt.virtualedit = "block"

-- search and replace will show in a split screen
vim.opt.inccommand = "split"

vim.opt.ignorecase=true

