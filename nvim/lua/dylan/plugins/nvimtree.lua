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
        width = 40,
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
      },
      -- Disable window picker for explorer to work well with window splits.
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- Set desc placeholder to be used as a comment and description.
    local desc = ""

    desc = "Toggle file explorer"
    vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = desc })

    desc = "Toogle file explorer on current file"
    vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = desc })

    desc = "Collapse file explorer"
    vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = desc })

    desc = "Refresh file explorer"
    vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = desc })
    
    desc = "Toggle between sidebar and file"
    vim.keymap.set("n", "<leader>ew", "<C-w>w", { desc = desc })

  end,
}
