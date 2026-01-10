return {
  "Vigemus/iron.nvim",
  cmd = { "IronRepl", "IronRestart", "IronFocus" },
  keys = {
    { "<leader>rs", "<cmd>IronRepl<cr>", desc = "Start REPL" },
    { "<leader>rr", "<cmd>IronRestart<cr>", desc = "Restart REPL" },
    { "<leader>rf", "<cmd>IronFocus<cr>", desc = "Focus REPL" },
    { "<leader>rS", "<cmd>IronSend<cr>", desc = "Send to REPL" },
  },
  config = function()
    local iron = require("iron.core")

    iron.setup({
      config = {
        scratch_repl = true,
        repl_definition = {
          python = {
            command = { "python3" },
          },
          lua = {
            command = { "lua" },
          },
          sh = {
            command = { "bash" },
          },
        },
        repl_open_cmd = require("iron.view").split.vertical.botright(0.4),
      },
      keymaps = {
        send_motion = "<leader>r",
        visual_send = "<leader>r",
        send_file = "<leader>rf",
        send_line = "<leader>rl",
        send_mark = "<leader>rm",
        mark_motion = "<leader>rm",
        mark_visual = "<leader>rm",
        remove_mark = "<leader>rd",
        cr = "<leader>r<cr>",
        interrupt = "<leader>r<space>",
        exit = "<leader>rq",
        clear = "<leader>rc",
      },
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true,
    })
  end,
}
