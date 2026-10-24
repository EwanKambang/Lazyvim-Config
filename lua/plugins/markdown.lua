-- Tweaks for the lang.markdown extra
local markdownlint_config = vim.fn.stdpath("config") .. "/.markdownlint-cli2.yaml"

return {
  -- point markdownlint at our relaxed rule set (default rules flag almost every line of normal notes)
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", markdownlint_config, "-" },
        },
      },
    },
  },
  -- same rules for the --fix formatter that runs on save
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ["markdownlint-cli2"] = {
          prepend_args = { "--config", markdownlint_config },
        },
      },
    },
  },
  -- no latex parser / utftex installed, so skip latex rendering
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      latex = { enabled = false },
    },
  },
}
