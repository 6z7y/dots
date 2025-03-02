return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<C-_>]],
                direction = "tab",
            })
        end
    },
}

