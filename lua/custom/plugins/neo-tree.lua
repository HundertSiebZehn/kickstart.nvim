-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal position=float<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['t'] = 'open_tab',
        },
      },
    },
    commands = {
      open_tab = function(state)
        local node = state.tree:get_node()
        if node and node.type == 'file' then
          local path = node:get_id()
          -- vim.api.nvim_input(":Neotree close<CR>")
          vim.api.nvim_input(':tabnew ' .. path .. '<CR>')
        end
      end,
    },
  },
}
