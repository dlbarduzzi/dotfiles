return {
  "nvim-telescope/telescope.nvim",
  event = "VimEnter",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
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
          file_ignore_patterns = { "node_modules", ".git" },
          hidden = true,
        },
      },
      live_grep = {
        file_ignore_patterns = { "node_modules", ".git" },
        additional_args = function(_)
          return { "--hidden" }
        end,
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
      },
    })

    -- Enable Telescope extensions if they are installed
    pcall(telescope.load_extension, "fzf")
    pcall(telescope.load_extension, "ui-select")

    local builtin = require("telescope.builtin")

    -- Placeholder.
    local desc = ""

    desc = "Find files"
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = desc })

    desc = "Find recent files"
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = desc })

    desc = "Find string (grep)"
    vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = desc })

    desc = "Find current word"
    vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = desc })

    desc = "Find diagnostics"
    vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = desc })

    desc = "Find help"
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = desc })

    desc = "Find keymaps"
    vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = desc })

    desc = "Find todos"
    vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = desc })

    -- Helper commands.
    -- `Ctrl + k` : scroll up between files
    -- `Ctrl + j` : scroll down between files
    -- `Ctrl + u` : scroll up in preview window
    -- `Ctrl + d` : scroll down in preview window
  end,
}

