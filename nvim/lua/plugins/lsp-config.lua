return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "rust_analyzer" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            -- تكوين lua_ls
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })

            -- تكوين rust_analyzer
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })


            -- تعيينات المفاتيح
            local opts = {}
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
    {
        "hrsh7th/cmp-nvim-lsp",  -- إضافة cmp-nvim-lsp
    },
    {
        "simrat39/rust-tools.nvim",  -- إضافة rust-tools (اختياري)
        config = function()
            require("rust-tools").setup({})
        end,
    },
}
