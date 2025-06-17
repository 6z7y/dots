-- Unified plugins configuration for Neovim
-- Each plugin has a comment explaining its purpose

return {
  -- ============ UI & VISUAL PLUGINS ============

  -- Color scheme: Solarized Osaka theme
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "AlphaTechnolog/pywal.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme solarized-osaka") -- أول
      require("pywal").setup()
      vim.cmd("colorscheme pywal") -- بعده
    end,
  },

  -- Status line: Customizable bottom status bar
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "pywal",
        component_separators = { left = " ", right = "" },
        section_separators = { left = "", right = "" },
        icons_enabled = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {  },
        lualine_c = {'filename', 'branch', 'diff', 'diagnostics'},
        lualine_x = { "filetype" },
        lualine_y = {  },
        lualine_z = {  },
      },
    },
  },

  -- -- Buffer line: Top tab-like buffer navigation
  -- {
  --   'akinsho/bufferline.nvim',
  --   version = "*",
  --   dependencies = 'nvim-tree/nvim-web-devicons',
  --   config = function()
  --     require("bufferline").setup({
  --       options = {
  --         mode = "buffers",
  --         separator_style = "thin",
  --         show_buffer_close_icons = true,
  --         show_close_icon = false,
  --         color_icons = true,
  --         persist_buffer_sort = true,
  --         numbers = "none",
  --         show_tab_indicators = false,
  --       }
  --     })
  --   end,
  -- },


  -- Buffer line
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({})
    end
  },

  -- Dashboard: Startup screen with useful shortcuts
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
          [[                                      ]],
          [[                                      ]],
          [[                                      ]],
          [[                                      ]],
          [[                                      ]],
          [[                                      ]],
          [[           .-') _                     ]],
          [[          (  OO) )                    ]],
          [[  ,--.  ,(_)----..--------.,--.   ,--. ]],
          [[ /  .'  |       ||   __   ' \  `.'  /  ]],
          [[.  / -. '--.   / `--' .  /.-')     /   ]],
          [[| .-.  '(_/   /      /  /(OO  \   /    ]],
          [[' \  |  |/   /___   .  /  |   /  /\_   ]],
          [[\  `'  /|        | /  /   `-./  /.__)  ]],
          [[ `----' `--------'`--'      `--'       ]],
          [[                                      ]],
          [[                                      ]],
          [[                                      ]],
          [[                                      ]],
          },
          center = {
            {
              icon = '  ',
              desc = ' New File',
              key = 'n',
              action = 'ene | startinsert',
            },
            {
              icon = '󰚰  ',
              desc = ' Update Plugins',
              key = 'u',
              action = 'Lazy sync',
            },
            {
              icon = '  ',
              desc = ' Restore Session',
              key = 'r',
              action = 'SessionRestore',
            },
            {
              icon = '󰗼  ',
              desc = ' Quit',
              key = 'q',
              action = 'qa!',
            }
          }
        }
      }
    end
  },

  -- ============ PROGRAMMING TOOLS ============

  -- Treesitter: Advanced syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },
      })
    end,
  },

  -- Auto tag: Auto close and rename HTML tags
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },

  -- Rust Tools: Enhanced Rust development
  {
    "simrat39/rust-tools.nvim",
    config = function()
        require("rust-tools").setup({})
    end,
  },

  -- Autopairs: Auto-close brackets/quotes
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },

  -- Colorizer: CSS color previews
  {
    "NvChad/nvim-colorizer.lua",
      opt = { user_default_options = { css = true, css_fn = true, mode = "background", names = false } } },

  -- Markdown Renderer: Live Markdown preview
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    opts = {},
  },

  -- ============ UTILITY PLUGINS ============

  -- File Explorer: Sidebar file tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require('neo-tree').setup({
          close_if_last_window = true,
          enable_git_status = true,
          enable_diagnostics = true,
        window = {
          mappings = {
            ['l'] = 'open',
            ['h'] = 'navigate_up',
          }
        }
      })
    end,
  },

  -- Terminal: Integrated floating terminal
  {
      "akinsho/toggleterm.nvim",
      config = function()
          require("toggleterm").setup({
              open_mapping = [[<C-_>]],
              shell = "fish",
              start_in_insert = true,
              hide_numbers = true,
              shade_terminals = true,
              size = 19,
              float_opts = {
                border = "curved",
            },
          })
      end
  },

  -- Notifications
  {
    "rcarriga/nvim-notify",
    config = function()
      local notify = require("notify")
      notify.setup({
        background_colour = "#000000",
        render = "minimal",
        stages = "fade_in_slide_out",
        timeout = 3000,
      })
      vim.notify = notify
    end,
  },

  -- Auto tag closing
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },

    -- Noice for better command line UI
   {
     "folke/noice.nvim",
     event = "VeryLazy",
     opts = {
       presets = { command_palette = true },
     },
     dependencies = { "MunifTanjim/nui.nvim" },
   },

  -- Discord Presence: Show coding activity in Discord
  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    config = function()
      require("neocord").setup({
        global_timer = true,
        logo = "NULL",
        logo_tooltip = "Neovim",
        main_text = "Editing %filename%",
        line_number_text = "Line %line% out of %total_lines%",
        update_interval = 10,
        enable_line_number = false,
        blacklist = {},
        git = {
          enable = false,
        },
        buttons = {
          enabled = false,
        }
      })
    end,
  },

  -- Keybinding Helper: Shows available keymaps
  {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
  },
}
