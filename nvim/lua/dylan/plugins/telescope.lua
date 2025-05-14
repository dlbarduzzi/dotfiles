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
        return vim.fn.executable "make" == 1
      end,
    },
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        path_display = { "smart" },
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
      },
    })

    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")

    local builtin = require("telescope.builtin")

    local map = vim.keymap
    local desc = "Placeholder."

    desc = "Find files"
    map.set("n", "<leader>ff", builtin.find_files, { desc = desc })

    desc = "Find recent files"
    map.set("n", "<leader>fr", builtin.oldfiles, { desc = desc })

    desc = "Find string (grep)"
    map.set("n", "<leader>fs", builtin.live_grep, { desc = desc })

    desc = "Find current word"
    map.set("n", "<leader>fw", builtin.grep_string, { desc = desc })

    desc = "Find diagnostics"
    map.set("n", "<leader>fd", builtin.diagnostics, { desc = desc })

    desc = "Find help"
    map.set("n", "<leader>fh", builtin.help_tags, { desc = desc })

    desc = "Find keymaps"
    map.set("n", "<leader>fk", builtin.keymaps, { desc = desc })

    desc = "Find todos"
    map.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = desc })

    desc = "Find telescope"
    map.set("n", "<leader>fb", builtin.builtin, { desc = desc })

  end,
}
