return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                shell = "fish", -- Set fish as the default shell
                start_in_insert = true,
                hide_numbers = true,
                shade_terminals = true,
                open_mapping = [[<C-_>]],
                direction = "float",
            })
        end
    },
}
