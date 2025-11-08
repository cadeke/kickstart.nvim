return {
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local nvimtree = require 'nvim-tree'

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup {
      view = {
        width = 35,
        relativenumber = true,
        side = 'right',
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      git = {
        ignore = false,
      },
    }

    -- set keymaps
    local keymap = vim.keymap

    keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = '[E]xplorer toggle' }) -- toggle file explorer
    keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = '[E]xplorer toggle on [f]ocused file' }) -- toggle file explorer on current file
    keymap.set('n', '<leader>ew', '<cmd>NvimTreeCollapse<CR>', { desc = '[E]xplorer collapse all folders' }) -- collapse file explorer
  end,
}
