return {
  "AlphaTechnolog/pywal.nvim",
  priority = 1000,
  config = function()
    require("pywal").setup()
    vim.cmd("colorscheme pywal")
  end
}
