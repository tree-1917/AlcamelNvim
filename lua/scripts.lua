-- ==========================================
-- Alcamel Scripts 
-- ==========================================
local activeScripts = {
  "Scripts.copyWhole", 
  "Scripts.writeTemplate",
}

for _, script_name in ipairs(activeScripts) do 
  local ok, script = pcall(require, script_name)
  if ok and script.run and script.key then  
    vim.keymap.set('n', script.key, script.run, { noremap = true, silent = true })
  else 
    vim.notify("Failed to load script: " .. script_name, vim.log.levels.WARN)
  end
end

