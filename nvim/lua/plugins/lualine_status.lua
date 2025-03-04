return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      theme = "pywal",
      section_separators = { left = "", right = "" },
      component_separators = { left = "  ", right = " " },
      icons_enabled = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {  },
      lualine_c = { "filename","branch", "diff", "diagnostics" },

      lualine_x = {  },
      lualine_y = {  },
      lualine_z = {  },
    },
  },
}
