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
        map("gd", require("telescope.builtin").lsp_definitions, "Show LSP definitions")
        map("gR", require("telescope.builtin").lsp_references, "Show LSP references")
        map("gD", vim.lsp.buf.declaration, "Go to declaration")
        map("gi", require("telescope.builtin").lsp_implementations, "Show LSP implementations")
        map("gt", require("telescope.builtin").lsp_type_definitions, "Show LSP type definitions")
        map("<leader>ca", vim.lsp.buf.code_action, "See available code actions")
        map("<leader>rn", vim.lsp.buf.rename, "Smart rename")
        map("<leader>d", vim.diagnostic.open_float, "Show line diagnostics")
        map("[d", vim.diagnostic.goto_prev, "Go to previous diagnostic")
        map("]d", vim.diagnostic.goto_next, "Go to next diagnostic")
        map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "Document symbols")
        map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "Workspace symbols")
        map("K", vim.lsp.buf.hover, "Hover Documentation")
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

