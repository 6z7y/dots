return {
  "echasnovski/mini.indentscope",
  version = false,
  config = function()
    require("mini.indentscope").setup({
      symbol = "│",
      options = { try_as_border = true },
      draw = {
        animation = require("mini.indentscope").gen_animation.quadratic({ easing = "out" }),
      }
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "dashboard", "alpha", "help", "toggleterm" },
      callback = function()
        vim.b.miniindentscope_disable = true
      end
    })
  end
}
