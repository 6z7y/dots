return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_istall = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
