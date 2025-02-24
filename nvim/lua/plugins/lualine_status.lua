return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'codedark',
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {
          'filename',
          {
            'diagnostics',
            sources = {'nvim_diagnostic'},
            sections = {'error', 'warn'},
            symbols = {
              error = '❌',
              warn = '⚠️ ',
            }
          }
        },
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      }
    }
  end
}
