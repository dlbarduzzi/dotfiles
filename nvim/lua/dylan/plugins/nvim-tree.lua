return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- Disable netrw at the very start of your init.lua.
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      view = {
        width = 32,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_open = "",
              arrow_closed = "",
            },
          },
        },
        filters = {
          custom = { "^.git$", ".DS_Store" },
        },
      },
      -- Disable window_picker for explorer to work well with window splits.
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
    })

    -- Placeholder.
    local desc = ""

    desc = "Toggle file explorer"
    vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = desc })

    desc = "Toggle file explorer on current file"
    vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = desc })

    desc = "Collapse file explorer"
    vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = desc })

    desc = "Refresh file explorer"
    vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = desc })

    desc = "Toggle between sidebar and file"
    vim.keymap.set("n", "<leader>ew", "<C-w>w", { desc = desc })
  end
}
