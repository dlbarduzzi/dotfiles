return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup({
      view = {
        width = 32,
      },
      renderer = {
        root_folder_label = false,
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
      },
      filters = {
        dotfiles = false,
        custom = { "^.git$", ".DS_Store" },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
    })

    local map = vim.keymap
    local desc = "Placeholder."

    desc = "Toggle file explorer"
    map.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = desc })

    desc = "Toggle file explorer on current file"
    map.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = desc })

    desc = "Collapse file explorer"
    map.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = desc })

    desc = "Refresh file explorer"
    map.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = desc })

    desc = "Toggle between sidebar and file"
    map.set("n", "<leader>ew", "<C-w>w", { desc = desc })

  end,
}
