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
                ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "html", "cssls", "ts_ls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            -- Lua LSP
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })

            -- Rust LSP
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })

            -- Python LSP
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })

            -- HTML
            lspconfig.html.setup({
                capabilities = capabilities,
            })

            -- CSS
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })

            -- JavaScript (tsserver)
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })


            -- C/C++ LSP
            -- lspconfig.clangd.setup({
            --     capabilities = capabilities,
            -- })
        end,
    },
    {
        "hrsh7th/cmp-nvim-lsp",
    },
}
