return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local function codex_status()
        local ok, codex = pcall(require, "codex")
        return ok and codex.status() or ""
      end

      table.insert(opts.sections.lualine_x, 1, codex_status)
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.theme = "auto"
      return opts
    end,
  },
}
