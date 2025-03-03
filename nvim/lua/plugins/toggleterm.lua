return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<C-_>]],
                direction = "float",
            })
        end
    },
}
