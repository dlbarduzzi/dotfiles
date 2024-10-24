return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "j-hui/fidget.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("fidget").setup({})

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc, mode)
          mode = mode or "n"
          vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end

        -- Jump to the definition of the word under your cursor.
        --  This is where a variable was first declared, or where a function is defined, etc.
        --  To jump back, press <C-t>.
        map("gd", require("telescope.builtin").lsp_definitions, "Show definition")

        -- Find references for the word under your cursor.
        map("gr", require("telescope.builtin").lsp_references, "Show references")

        -- Jump to the implementation of the word under your cursor.
        --  Useful when your language has ways of declaring types without an actual implementation.
        map("gi", require("telescope.builtin").lsp_implementations, "Show implementation")

        -- Jump to the type of the word under your cursor.
        --  Useful when you're not sure what type a variable is and you want to see
        --  the definition of its *type*, not where it was *defined*.
        map("gt", require("telescope.builtin").lsp_type_definitions, "Show type definition")

        -- Fuzzy find all the symbols in your current document.
        --  Symbols are things like variables, functions, types, etc.
        map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "Show document symbols")

        -- Fuzzy find all the symbols in your current workspace.
        --  Similar to document symbols, except searches over your entire project.
        map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "Show workspace symbols")

        -- Rename the variable under your cursor.
        --  Most Language Servers support renaming across files, etc.
        map("<leader>rn", vim.lsp.buf.rename, "Smart rename")

        -- Execute a code action, usually your cursor needs to be on top of an error
        -- or a suggestion from your LSP for this to activate.
        map("<leader>ca", vim.lsp.buf.code_action, "Show available code actions", { "n", "x" })

        -- WARN: This is not `Show definition`, this is `Show declaration`.
        --  For example, in C this would take you to the header.
        map("gD", vim.lsp.buf.declaration, "Show declaration")

        -- The following two autocommands are used to highlight references of the
        -- word under your cursor when your cursor rests there for a little while.
        --    See `:help CursorHold` for information about when this is executed
        --
        -- When you move your cursor, the highlights will be cleared (the second autocommand).
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

        local border = {
          {"╭", "FloatBorder"},
          {"─", "FloatBorder"},
          {"╮", "FloatBorder"},
          {"│", "FloatBorder"},
          {"╯", "FloatBorder"},
          {"─", "FloatBorder"},
          {"╰", "FloatBorder"},
          {"│", "FloatBorder"},
        }

        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
          border = border
        })

        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
          border = border
        })

        vim.diagnostic.config({
          virtual_text = false,
          float = { border = border }
        })

      end,
    })

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

    -- Enable the following language servers.
    local servers = {
      -- See `:help lspconfig-all` for a list of all the pre-configured LSPs.
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

    -- Ensure the servers and tools above are installed.
    require("mason").setup()

    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, {
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
    })

    require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          -- This handles overriding only values explicitly passed by the server configuration above.
          -- Useful when disabling certain features of an LSP (for example, turning off formatting for ts_ls).
          server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })

  end,
}
