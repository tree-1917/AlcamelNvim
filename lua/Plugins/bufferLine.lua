return {
    {'akinsho/bufferline.nvim', 
      version = "*", 
      dependencies = {
        'nvim-tree/nvim-web-devicons'
      },
      config = function()
        require('bufferline').setup({
          options = {
            number = "none", 
            close_command = "bdelete! %d",
            right_mouse_command = "bdelete! %d",
            left_mouse_command = "buffer %d",
            indicator = { style = 'underline' },
            buffer_close_icon = '',
            modified_icon = '●',
            close_icon = '',
            left_trunc_marker = '',
            right_trunc_marker = '',
            max_name_length = 18,
            max_prefix_length = 15,
            tab_size = 18,
            show_buffer_close_icons = true,
            show_close_icon = true,
            enforce_regular_tabs = false,
            view = 'multiwindow',
          }
        })
      local opts = { noremap = true, silent = true }
      local map = vim.api.nvim_set_keymap

      -- Create new tab
      map('n', '<leader>bn', ':tabnew<CR>', opts)

      -- Navigate buffers
      map('n', '<leader>bi', ':BufferLineCycleNext<CR>', opts)
      map('n', '<leader>bj', ':BufferLineCyclePrev<CR>', opts)

      -- Move buffers
      map('n', '<leader>bl', ':BufferLineMoveNext<CR>', opts)
      map('n', '<leader>bh', ':BufferLineMovePrev<CR>', opts)

      -- Optional: Navigate tabs
      map('n', '<leader>tn', ':tabnext<CR>', opts)
      map('n', '<leader>tp', ':tabprevious<CR>', opts)
      end 
    }
}
