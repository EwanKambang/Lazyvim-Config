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
