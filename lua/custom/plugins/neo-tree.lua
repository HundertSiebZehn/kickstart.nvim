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
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { 'G', ':Neotree reveal git_status<CR>', desc = 'GitStatus', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['t'] = 'open_tabnew',
        },
      },
    },
    commands = {},
    close_if_last_windowa = true,
    sort_case_insensitive = true,
    default_component_configs = {
      use_git_status_colors = true,
    },
    window = {
      position = 'float',
    },
  },
}
