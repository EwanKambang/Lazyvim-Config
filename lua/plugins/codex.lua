return {
  {
    "kkrampis/codex.nvim",
    lazy = true,
    cmd = { "Codex", "CodexToggle" },
    keys = {
      {
        "<leader>cx",
        function()
          local opts = { width = 0.38, height = 0.85 }
          require("codex_dock").toggle_and_dock(opts)
        end,
        desc = "Toggle Codex (right-docked float)",
        mode = "n",
      },
      {
        "<leader>cx",
        function()
          local opts = { width = 0.38, height = 0.85 }
          require("codex_dock").toggle_and_dock(opts)
        end,
        desc = "Toggle Codex (right-docked float)",
        mode = "t",
      },
    },
    opts = {
      panel = false,
      border = "rounded",
      width = 0.38,
      height = 0.85,
      autoinstall = true,
      use_buffer = false,
      keymaps = { toggle = nil, quit = "<C-q>" },
    },
    init = function()
      -- keep it docked when resizing, without forcing codex setup twice
      require("codex_dock").setup_autocmd({ width = 0.38, height = 0.85 })
    end,
  },
}
