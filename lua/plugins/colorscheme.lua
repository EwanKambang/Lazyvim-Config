return {
  -- Install the colorscheme and make it available early
  {
    "dasch/vim-mocha",
    lazy = false,
    priority = 1000,
  },
  -- Tell LazyVim which colorscheme to use so its plugin theming matches
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "mocha",
    },
  },
}
