return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        separator_style = "slant",
        show_buffer_close_icons = true,
        show_close_icon = false,
        color_icons = true,
        persist_buffer_sort = true,
        numbers = "none",  -- This hides the buffer numbers
        show_tab_indicators = false,  -- Hide tab indicators if needed
      }
    })
  end,
}
