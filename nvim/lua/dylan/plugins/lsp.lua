return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
    "j-hui/fidget.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  config = function()
    require("fidget").setup({})

    local servers = {
      bashls = {},
      cssls = {},
      dockerls = {},
      docker_compose_language_service = {},
      emmet_ls = {},
      eslint = {},
      gopls = {},
      golangci_lint_ls = {},
      html = {},
      jsonls = {},
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      },
      prismals = {},
      pyright = {},
      tailwindcss = {},
      terraformls = {},
      ts_ls = {},
      yamlls = {},
    }

    require("mason").setup()

    local ensure_installed = vim.tbl_keys(servers or {})

    vim.list_extend(ensure_installed, {
      "black",
      "eslint_d",
      "gofumpt",
      "goimports-reviser",
      "golangci-lint",
      "golines",
      "hadolint",
      "isort",
      "jsonlint",
      "markdownlint",
      "prettier",
      "pylint",
      "stylua",
      "tflint",
    })

    require("mason-tool-installer").setup({
      ensure_installed = ensure_installed
    })

    local capabilities = require("blink.cmp").get_lsp_capabilities()

    require("mason-lspconfig").setup({
      ensure_installed = {},
      automatic_installation = false,
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend(
          "force", {}, capabilities, server.capabilities or {}
          )
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })
  end
}
