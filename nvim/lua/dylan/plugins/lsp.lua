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

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc, mode)
          mode = mode or "n"
          ---@diagnostic disable-next-line: missing-fields
          vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end

        -- Jump to the definition of the word under your cursor.
        -- This is where a variable was first declared, or where a function is defined, etc.
        -- To jump back, press <C-t>.
        map("gd", require("telescope.builtin").lsp_definitions, "Go to definition")

        -- Find references for the word under your cursor.
        map("gr", require("telescope.builtin").lsp_references, "Show references")

        -- Jump to the implementation of the word under your cursor.
        -- Useful when your language has ways of declaring types without an actual implementation.
        map("gi", require("telescope.builtin").lsp_implementations, "Show implementation")

        -- Jump to the type of the word under your cursor.
        -- Useful when you're not sure what type a variable is and you want to see
        -- the definition of its *type*, not where it was *defined*.
        map("gt", require("telescope.builtin").lsp_type_definitions, "Show type definition")

        -- Fuzzy find all the symbols in your current document.
        -- Symbols are things like variables, functions, types, etc.
        map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "Show document symbols")

        -- Rename the variable under your cursor.
        --  Most Language Servers support renaming across files, etc.
        map("<leader>rn", vim.lsp.buf.rename, "Smart rename")

        -- Execute a code action, usually your cursor needs to be on top of an error
        -- or a suggestion from your LSP for this to activate.
        map("<leader>ca", vim.lsp.buf.code_action, "Show available code actions", { "n", "x" })

        -- Show documentation for what is under the cursor.
        map("K", vim.lsp.buf.hover, "Show documentation for what is under the cursor")

        -- Restart LSP.
        map("<leader>rs", ":LspRestart<CR>", "Restart LSP")

        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities.documentHighlightProvider then
          vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
            buffer = event.buf,
            callback = vim.lsp.buf.document_highlight,
          })

          vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
            buffer = event.buf,
            callback = vim.lsp.buf.clear_references,
          })
        end
      end,
    })

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
      ensure_installed = ensure_installed,
    })

    local capabilities = require("blink.cmp").get_lsp_capabilities()

    require("mason-lspconfig").setup({
      ensure_installed = {},
      automatic_installation = false,
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })
  end,
}
