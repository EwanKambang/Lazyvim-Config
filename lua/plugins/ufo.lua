return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    event = "VeryLazy", -- or "BufReadPost" if you want it earlier
    config = function()
      require("ufo").setup({
        provider_selector = function()
          return { "treesitter", "indent" } -- can include 'lsp' if you want
        end,
      })

      -- Optional keymaps
      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
      vim.keymap.set("n", "zp", require("ufo").peekFoldedLinesUnderCursor)
    end,
  },
}
