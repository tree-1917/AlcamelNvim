local M = {}
M.desc = "Copy Whole file to clipboard" 

M.key  = "<leader>ca"

M.run  = function() 
  vim.cmd('normal! ggVG"+y')
end 

return M
