return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local function codex_status()
        local ok, codex = pcall(require, "codex")
        return ok and codex.status() or ""
      end
      opts.options = opts.options or {}
      opts.options.theme = "auto"
      opts.sections = opts.sections or {}
      opts.sections.lualine_x = opts.sections.lualine_x or {}
      table.insert(opts.sections.lualine_x, 1, codex_status)
      return opts
    end,
  },
}
