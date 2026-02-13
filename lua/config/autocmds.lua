-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = "arduino",
  callback = function()
    vim.bo.commentstring = "// %s"
  end,
})

-- Transparent UI setup (moved from plugins/transparency.lua)
-- Ensures transparent backgrounds for core and common plugin panels
do
  vim.opt.termguicolors = true
  vim.opt.winblend = 0
  vim.opt.pumblend = 0

  local function make_transparent()
    local ok = pcall(vim.api.nvim_set_hl, 0, "Normal", { bg = "NONE" })
    if not ok then
      return
    end

    local set = vim.api.nvim_set_hl
    -- Core editor + inactive
    set(0, "NormalNC", { bg = "NONE" })
    set(0, "SignColumn", { bg = "NONE" })
    set(0, "FoldColumn", { bg = "NONE" })

    -- Floating windows & borders
    set(0, "NormalFloat", { bg = "NONE" })
    set(0, "FloatBorder", { bg = "NONE" })
    pcall(set, 0, "FloatTitle", { bg = "NONE" })

    -- Popups / completion menu
    set(0, "Pmenu", { bg = "NONE" })
    pcall(set, 0, "PmenuSbar", { bg = "NONE" })
    pcall(set, 0, "PmenuThumb", { bg = "NONE" })

    -- Common plugin panels
    pcall(set, 0, "TelescopeNormal", { bg = "NONE" })
    pcall(set, 0, "TelescopeBorder", { bg = "NONE" })
    pcall(set, 0, "LazyNormal", { bg = "NONE" })
    pcall(set, 0, "MasonNormal", { bg = "NONE" })
    pcall(set, 0, "WhichKeyFloat", { bg = "NONE" })

    -- Tree plugins (if any are enabled)
    pcall(set, 0, "NeoTreeNormal", { bg = "NONE" })
    pcall(set, 0, "NeoTreeNormalNC", { bg = "NONE" })
    pcall(set, 0, "NvimTreeNormal", { bg = "NONE" })
    pcall(set, 0, "NvimTreeNormalNC", { bg = "NONE" })
  end

  -- Apply on colorscheme changes and immediately on startup
  vim.api.nvim_create_autocmd("ColorScheme", {
    callback = make_transparent,
  })
  make_transparent()
end
