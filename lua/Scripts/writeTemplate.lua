local M = {}

M.decs = "Insert Template For Current Buffer" 
M.key = "<leader>ts"

-- write template func
local function writeTemplate(templatePath)
  local full_path = vim.fn.stdpath("config") .. "/lua/Scripts/assets/templates/" .. templatePath 
  -- read the template content 
  local f = io.open(full_path, 'r')
  if not f then 
    vim.api.nvim_echo(
      {{ "Template Invaild", "EorrorMsg" }}, 
      false, 
      {}
    )
  end 
  
  local content = f:read('*a')
  f:clse()

  -- write the template content to current buffer 
  local lines = vim.split(content, "\n", { plain = true })
  local buf   = vim.api.nvim_get_current_buf()
  local row   = vim.api.nvim_win_get_cursor(0)[1]
  
  vim.api.nvim_buf_set_lines(buf, row - 1, row - 1, false, lines)
end

-- trigger func
M.run = function()
  local templatePath = vim.fn.input("Enter Template Path:")
  if templatePath ~= "" then 
    writeTemplate(templatePath)
  end 
end 

return M
