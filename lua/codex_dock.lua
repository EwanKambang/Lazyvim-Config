local M = {}

local function get_state_win()
  local ok, state = pcall(require, "codex.state")
  if not ok then
    return nil
  end
  local win = state.win
  if win and vim.api.nvim_win_is_valid(win) then
    return win
  end
  return nil
end

function M.dock_right(opts)
  local win = get_state_win()
  if not win then
    return
  end

  local cfg = vim.api.nvim_win_get_config(win)
  if not cfg or cfg.relative ~= "editor" then
    return
  end

  -- Compute desired size from current editor dimensions so it scales on resize
  local columns = vim.o.columns
  local total_lines = vim.o.lines

  local want_w = (opts and opts.width) or 0.38 -- fraction of editor width
  local want_h = (opts and opts.height) or 0.85 -- fraction of editor height

  local width = math.max(1, math.floor(columns * want_w))
  -- Approximate usable editor height (exclude cmdline/statusline/tabline where applicable)
  local cmdheight = vim.o.cmdheight or 1
  local statusline = (vim.o.laststatus and vim.o.laststatus > 0) and 1 or 0
  local tabline = (vim.o.showtabline and vim.o.showtabline > 0) and 1 or 0
  local editor_lines = math.max(1, total_lines - cmdheight - statusline - tabline)
  local height = math.max(1, math.floor(editor_lines * want_h))

  local row = math.max(0, math.floor((editor_lines - height) / 2))
  local pad = 2
  local col = math.max(0, columns - width - pad)

  vim.api.nvim_win_set_config(win, {
    relative = "editor",
    row = row,
    col = col,
    width = width,
    height = height,
  })
end

function M.toggle_and_dock(opts)
  require("codex").toggle()
  vim.schedule(function()
    M.dock_right(opts)
  end)
end

function M.setup_autocmd(opts)
  vim.api.nvim_create_autocmd("VimResized", {
    callback = function()
      M.dock_right(opts)
    end,
  })
end

return M
