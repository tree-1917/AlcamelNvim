return {
  -- Mason core
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  -- Bridge Mason ↔ Neovim LSP
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright", -- Python
          "lua_ls",  -- Lua
          "gopls",   -- Go
          "clangd",  -- C/C++
          "bashls",  -- Bash
        },
        automatic_installation = true,
      })
    end,
  },

  -- Neovim LSP  
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Lua
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      })

      -- Python
      vim.lsp.config("pyright", {})

      -- Go
      vim.lsp.config("gopls", {})

      -- C / C++
      vim.lsp.config("clangd", {})

      -- Bash
      vim.lsp.config("bashls", {})
    end,
  },
}
