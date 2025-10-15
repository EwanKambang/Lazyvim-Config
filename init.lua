-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Define the HTML template
local html_template = [[
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

</body>
</html>
]]

-- Autocommand to insert template when creating a new .html file
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.html",
  callback = function()
    -- Check if the file is empty before inserting the template
    if vim.fn.line("$") == 1 and vim.fn.getline(1) == "" then
      vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(html_template, "\n"))
    end
  end,
})
