-- ========================================== -- 
-- Alcamel Neovim                             -- 
-- ========================================== -- 
vim.g.mapleader = " " 

-- Global Config
local opt = vim.opt 

opt.shiftwidth  	  = 2  
opt.tabstop     	  = 2 
opt.softtabstop  	  = 2
opt.textwidth       = 77
opt.expandtab 		  = true
opt.splitright 	 	  = true 
opt.splitbelow		  = true 
opt.number 		      = true 
opt.relativenumber 	= true 
opt.cursorline      = true
opt.cursorcolumn    = true
opt.mouse		        = "a"
opt.clipboard 		  = "unnamedplus"


-- Plugins Config 
require("plugins")

-- Scripts Config 
require("scripts")
