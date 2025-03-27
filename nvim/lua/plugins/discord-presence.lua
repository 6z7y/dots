return {
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
}
