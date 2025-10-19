return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = { "bashls", "lua_ls", "jdtls", "jsonls", "yamlls", "ts_ls", "gopls" },
      auto_install = true,
    },
  },
  {"mfussenegger/nvim-jdtls"},
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config('ts_ls', {
        capabilities = capabilities
      })
      vim.lsp.config('lua_ls', {
        capabilities = capabilities
      })
      vim.lsp.config('gopls', {
        capabilities = capabilities
      })
      vim.lsp.config('jdtls', {
        capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
