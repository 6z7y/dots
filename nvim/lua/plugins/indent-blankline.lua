return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
        exclude = {
            filetypes = { "dashboard", "alpha", "NvimTree", "help" },
            buftypes = { "terminal", "nofile" }
        }
    },
}

