return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = false,
        italic_comments = false,
        borderless_telescope = false,
      })
      vim.cmd.colorscheme "cyberdream"
      -- Toggle color theme.
      vim.api.nvim_set_keymap("n", "<leader>ct", ":CyberdreamToggleMode<CR>", {
        noremap = true,
        silent = true,
      })
    end
  },
}
