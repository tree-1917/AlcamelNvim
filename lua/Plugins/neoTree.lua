return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    config = function()
      require("neo-tree").setup({
        filesystem = {
          follow_current_file = true,  -- highlight current file
          use_libuv_file_watcher = true,
          filtered_items = {
            hide_dotfiles = false
          },
          window = {
            mappings = {
              ["<CR>"] = "open",      -- enter to open in same window
              ["f"] = "open",         -- f to open in same window
              ["s"] = "split_with_window_picker", -- s for horizontal split
              ["v"] = "vsplit_with_window_picker" -- v for vertical split
            }
          }
        },
        window = {
          position = "left",
          width = 30
        }
      })

      -- Keybinding to toggle Neo-tree
      vim.api.nvim_set_keymap(
        "n",
        "<leader>ft",
        ":Neotree toggle<CR>",
        { noremap = true, silent = true }
      )
    end
  }
}

