return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "bashls",
        "cssls",
        "dockerls",
        "docker_compose_language_service",
        "emmet_ls",
        "eslint",
        "gopls",
        "html",
        "jsonls",
        "terraformls",
        "ts_ls",
        "lua_ls",
        "prismals",
        "pyright",
        "tailwindcss",
        "yamlls",
      },
      automatic_installation = true,
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "black",
        "eslint_d",
        "isort",
        "gofumpt",
        "goimports-reviser",
        "golangci-lint",
        "golines",
        "prettier",
        "pylint",
        "stylua",
      },
    })
  end,
}

