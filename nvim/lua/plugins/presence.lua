return {
  "andweeb/presence.nvim", 
  config = function()
    require("presence").setup({
      -- General options
      auto_update = true,
      neovim_image_text = "Editing with Neovim",
      main_image = "file",
      debounce_timeout = 10,
      enable_line_number = false,
      blacklist = {},
      buttons = {
        { label = "GitHub", url = "https://github.com/6z7y56" },
      },
      show_time = true,
      global_timer = true,
      -- Add this option to prevent timer reset between files
      editing_text = "Editing %s",
      file_explorer_text = "Browsing %s",
      git_commit_text = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text = "Reading %s",
      workspace_text = "Working on %s",
      line_number_text = "Line %s out of %s",
      terminal_text = "Using Terminal",

      -- This is the key option to prevent timer reset
      file_assets = {},
    })
  end,
}
