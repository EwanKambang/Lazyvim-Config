return {
  "benlubas/molten-nvim",
  version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
  build = ":UpdateRemotePlugins",
  -- useful keymaps for common molten actions
  keys = {
    { "<leader>ml", "<cmd>MoltenEvaluateLine<cr>", desc = "Molten: evaluate line" },
    { "<leader>mv", "<cmd>MoltenEvaluateVisual<cr>", mode = "v", desc = "Molten: evaluate selection" },
    { "<leader>mo", "<cmd>MoltenEnterOutput<cr>", desc = "Molten: open output window" },
    { "<leader>mi", "<cmd>MoltenInit<cr>", desc = "Molten: init kernel" },
    { "<leader>mI", "<cmd>MoltenDeinit<cr>", desc = "Molten: deinit kernel" },
    { "<leader>mk", "<cmd>MoltenInterrupt<cr>", desc = "Molten: interrupt kernel" },
    { "<leader>mR", "<cmd>MoltenRestart<cr>", desc = "Molten: restart kernel" },
  },
  init = function()
    -- this is an example, not a default. Please see the readme for more configuration options
    vim.g.molten_output_win_max_height = 12
  end,
}
