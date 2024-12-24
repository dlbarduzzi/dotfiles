return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({
      extensions = {
        fzf = {}
      }
    })

    require("telescope").load_extension("fzf")
    require("dylan.custom.telescope.multigrep").setup()

    local builtin = require("telescope.builtin")

    -- Placeholder.
    local desc = ""

    ---@diagnostic disable
    desc = "Find files"
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = desc  })

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
    ---@diagnostic enable 

  end
}
