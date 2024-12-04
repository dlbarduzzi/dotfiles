return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        "~/",
        "~/Desktop",
        "~/Documents",
        "~/Downloads",
      },
    })

    -- Placeholder.
    local desc = ""

    desc = "Restore session for cwd"
    vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = desc })

    desc = "Save session for auto session root dir"
    vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = desc })
  end,
}
