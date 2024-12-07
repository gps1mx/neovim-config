return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "eslint",
          "ts_ls",
          "bashls",
          "apex_ls",
          "cssls",
          "dockerls",
          "docker_compose_language_service",
          "html",
          "jsonls",
          "intelephense",
          "sqlls",
          "phpactor"
      }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.apex_ls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.intelephense.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.phpactor.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
