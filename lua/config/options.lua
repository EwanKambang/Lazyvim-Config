-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.g.snacks_animate = false

vim.o.foldenable = true -- Enable folding
vim.o.foldlevel = 99 -- Expand all folds by default
vim.o.foldlevelstart = 99 -- Start with folds open
vim.o.foldcolumn = "1" -- Show fold column
vim.o.foldmethod = "expr" -- Use expression for folding
vim.o.foldexpr = "nvim_treesitter#foldexpr()" -- Use Treesitter for folding
