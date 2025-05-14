return {
  "folke/todo-comments.nvim",
  event = "VimEnter",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = { signs = false },
  config = function()
    local todo = require("todo-comments")

    local map = vim.keymap
    local desc = "Placeholder."

    desc = "Next todo comment"
    map.set("n", "]t", function() todo.jump_next() end, { desc = desc })

    desc = "Previous todo comment"
    map.set("n", "[t", function() todo.jump_prev() end, { desc = desc })

    todo.setup()
  end
}
