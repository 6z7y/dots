return {
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
        }, -- Your header

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
  -- {
  --   icon = '  ',
  --   desc = ' Restore Session',
  --   key = 's',
  --   action = 'SessionLoad',
  -- },
  {
    icon = '󰗼  ',
    desc = ' Quit',
    key = 'q',
    action = 'qa!',}
        } -- Close center table
      } -- Close config table
    } -- Close setup function
  end
}
