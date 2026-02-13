-- return {
--   {
--     "ellisonleao/gruvbox.nvim",
--     opts = {
--       transparent_mode = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }
--

return {
  -- Install the colorscheme and make it available early
  {
    "gremble0/yellowbeans.nvim",
    lazy = false,
    priority = 1000,
  },
  -- Tell LazyVim which colorscheme to use so its plugin theming matches
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "yellowbeans",
    },
  },
}

-- return {
--   {
--     "webhooked/kanso.nvim",
--     lazy = false,
--     -- priority = 1000,
--     opts = {
--       transparent = true,
--       dimInactive = false,
--       -- You can set a default variant if you like:
--       theme = "mist", -- or "zen", "mist", "pearl"
--       -- background = { dark = "ink", light = "pearl" },
--     },
--     config = function(_, opts)
--       require("kanso").setup(opts)
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "kanso",
--     },
--   },
-- }

-- Colorscheme configuration
-- Note:
-- - Use the colorscheme's actual name (file under `colors/`),
--   not the repo name. For silent.vim, that's "silent".
-- - Vimscript themes typically don't need a config function.

-- return {
--   {
--     "vim-scripts/silent.vim",
--     lazy = false,
--     priority = 1000,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "silent",
--     },
--   },
-- }

-- return {
--   {
--     "EdenEast/nightfox.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       options = {
--         transparent = true,
--       },
--     },
--     config = function(_, opts)
--       require("nightfox").setup(opts)
--
--       -- Ensure floating windows and common plugin panels are transparent.
--       -- Run after the colorscheme is actually applied so our overrides stick.
--       vim.api.nvim_create_autocmd("ColorScheme", {
--         pattern = "dawnfox",
--         callback = function()
--           local set = vim.api.nvim_set_hl
--           -- Core floats & borders
--           set(0, "NormalFloat", { bg = "NONE" })
--           set(0, "FloatBorder", { bg = "NONE" })
--           pcall(set, 0, "FloatTitle", { bg = "NONE" })
--
--           -- Completion / popups
--           set(0, "Pmenu", { bg = "NONE" })
--           pcall(set, 0, "PmenuSbar", { bg = "NONE" })
--           pcall(set, 0, "PmenuThumb", { bg = "NONE" })
--
--           -- Telescope
--           pcall(set, 0, "TelescopeNormal", { bg = "NONE" })
--           pcall(set, 0, "TelescopeBorder", { bg = "NONE" })
--
--           -- Lazy/Mason/WhichKey common panels
--           pcall(set, 0, "LazyNormal", { bg = "NONE" })
--           pcall(set, 0, "MasonNormal", { bg = "NONE" })
--           pcall(set, 0, "WhichKeyFloat", { bg = "NONE" })
--
--           -- File explorers (support both if present)
--           pcall(set, 0, "NeoTreeNormal", { bg = "NONE" })
--           pcall(set, 0, "NeoTreeNormalNC", { bg = "NONE" })
--           pcall(set, 0, "NvimTreeNormal", { bg = "NONE" })
--           pcall(set, 0, "NvimTreeNormalNC", { bg = "NONE" })
--         end,
--       })
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dawnfox",
--     },
--   },
-- }
