return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      local mason_registry = require("mason-registry")
      local servers = {
        -- Web Development
        "html-lsp",
        "css-lsp",
        "typescript-language-server",

        -- Python
        "pyright",

        -- Rust
        "rust-analyzer",

        -- Lua
        "lua-language-server",

        -- C/C++
        "clangd",

        -- Shell
        "bash-language-server", -- أبقيته هنا بشكل صحيح
      }

      for _, server in ipairs(servers) do
        if not mason_registry.is_installed(server) then
          vim.cmd("MasonInstall " .. server)
        end
      end
    end,
    dependencies = { "williamboman/mason-lspconfig.nvim" },
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

      -- C/C++
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      -- Bash
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })
    end,
  },

  {
    "hrsh7th/cmp-nvim-lsp",
  },
}

