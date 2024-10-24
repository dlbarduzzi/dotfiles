return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "nvim-telescope/telescope-fzf-native.nvim", build = "make"
    },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            -- Press `CTRL k` to go up
            ["<C-k>"] = actions.move_selection_previous,
            -- Press `CTRL j` to go down
            ["<C-j>"] = actions.move_selection_next,
            -- Press `CTRL q` to send selected items to the quick fix list
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      pickers = {
        find_files = {
          file_ignore_patterns = { "node_modules", ".git", ".venv" },
          hidden = true,
        },
      },
      live_grep = {
        file_ignore_patterns = { "node_modules", ".git", ".venv" },
        additional_args = function(_)
          return { "--hidden" }
        end,
      },
    })

    -- Improve sorting results.
    telescope.load_extension("fzf")
 
    -- Set desc placeholder to be used as a comment and description.
    local desc = ""

    desc = "Fuzzy find files in cwd"
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = desc })

    desc = "Fuzzy find recent files"
    vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = desc })

    desc = "Find string in cwd"
    vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = desc })
    
    desc = "Find string under cursor in cwd"
    vim.keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>", { desc = desc })

    -- Helper commands.
    -- `Ctrl + u`  : scroll up in preview window
    -- `Ctrl + d`  : scroll down in preview window
    -- `Ctrl + f`  : scroll left in preview window
    -- `Ctrl + k`  : scroll right in preview window

  end,
}

