return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end

        local desc = "Show references"
        map("gR", "<cmd>Telescope lsp_references<CR>", desc)

        desc = "Go to declaration"
        map("gD", vim.lsp.buf.declaration, desc)

        desc = "Show definitions"
        map("gd", "<cmd>Telescope lsp_definitions<CR>", desc)

        desc = "Show implementations"
        map("gi", "<cmd>Telescope lsp_implementations<CR>", desc)

        desc = "Show type definitions"
        map("gt", "<cmd>Telescope lsp_type_definitions<CR>", desc)

        desc = "See available code actions"
        map("<leader>ca", vim.lsp.buf.code_action, desc)

        desc = "Smart rename"
        map("<leader>rn", vim.lsp.buf.rename, desc)

        desc = "Show buffer diagnostics"
        map("<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", desc)

        desc = "Show line diagnostics"
        map("<leader>d", vim.diagnostic.open_float, desc)

        desc = "Go to previous diagnostic"
        map("[d", vim.diagnostic.goto_prev, desc)

        desc = "Go to next diagnostic"
        map("]d", vim.diagnostic.goto_next, desc)

        desc = "Show documentation for what is under cursor"
        map("K", vim.lsp.buf.hover, desc)

        desc = "Restart LSP"
        map("<leader>rs", ":LspRestart<CR>", desc)

      end,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    lspconfig["bashls"].setup({
      capabilities = capabilities,
    })
    lspconfig["cssls"].setup({
      capabilities = capabilities,
    })
    lspconfig["dockerls"].setup({
      capabilities = capabilities,
    })
    lspconfig["docker_compose_language_service"].setup({
      capabilities = capabilities,
    })
    lspconfig["eslint"].setup({
      capabilities = capabilities,
    })
    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
    })
    lspconfig["gopls"].setup({
      capabilities = capabilities,
    })
    lspconfig["html"].setup({
      capabilities = capabilities,
    })
    lspconfig["jsonls"].setup({
      capabilities = capabilities,
    })
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          -- Make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })
    lspconfig["terraformls"].setup({
      capabilities = capabilities,
    })
    lspconfig["ts_ls"].setup({
      capabilities = capabilities,
    })
    lspconfig["prismals"].setup({
      capabilities = capabilities,
    })
    lspconfig["pyright"].setup({
      capabilities = capabilities,
    })
    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
    })
    lspconfig["yamlls"].setup({
      capabilities = capabilities,
    })
  end,
}

