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
  {
    "webhooked/kanso.nvim",
    lazy = false,
    -- priority = 1000,
    opts = {
      transparent = true,
      dimInactive = false,
      -- You can set a default variant if you like:
      theme = "zen", -- or "zen", "mist", "pearl"
      -- background = { dark = "ink", light = "pearl" },
    },
    config = function(_, opts)
      require("kanso").setup(opts)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanso",
    },
  },
}
