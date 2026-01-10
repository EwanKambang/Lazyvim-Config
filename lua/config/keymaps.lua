-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Snacks picker keymaps
local map = vim.keymap.set

local function P()
  return require("snacks.picker")
end

map("n", "<leader>ff", function()
  P().files()
end, { desc = "Find Files (Snacks)" })

map("n", "<leader>fg", function()
  P().grep()
end, { desc = "Grep (Snacks)" })

map("n", "<leader>fb", function()
  P().buffers()
end, { desc = "Buffers (Snacks)" })

map("n", "<leader>fh", function()
  P().help()
end, { desc = "Help (Snacks)" })

map("n", "<leader>fd", function()
  P().diagnostics()
end, { desc = "Diagnostics (Snacks)" })
