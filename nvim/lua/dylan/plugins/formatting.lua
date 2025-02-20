return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  cmd = { "ConformInfo" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        css = { "prettier" },
        go = { "gofumpt", "goimports-reviser", "golines" },
        html = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        python = { "isort", "black" },
        terraform = { "terraform_fmt" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        yaml = { "prettier" },
      },
      format_on_save = {
        async = false,
        timeout_ms = 1000,
        lsp_fallback = true,
      },
    })
    vim.keymap.set("n", "<leader>mp", function()
      conform.format({
        async = false,
        timeout_ms = 1000,
        lsp_fallback = true,
      })
    end, { desc = "Format file" })
  end,
}
