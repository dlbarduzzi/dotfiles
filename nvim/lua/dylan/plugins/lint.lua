return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      dockerfile = { "hadolint" },
      go = { "golangcilint" },
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      json = { "jsonlint" },
      markdown = { "markdownlint" },
      python = { "pylint" },
      terraform = { "tflint" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    -- This block together simply highlights lint warning/errors but do no show messages
    -- by default. Once you hover over the text, then the warn/error will show up.
    --vim.diagnostic.config({ virtual_text = false, underline = true })
    --vim.api.nvim_create_autocmd("CursorHold", {
    --  callback = function()
    --    vim.diagnostic.open_float(nil, {
    --      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    --      prefix = "",
    --      source = "always",
    --      border = "single",
    --      focusable = false,
    --    })
    --  end,
    --  desc = "Show lint diagnostics on hover",
    --})

    vim.keymap.set("n", "<leader>li", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
