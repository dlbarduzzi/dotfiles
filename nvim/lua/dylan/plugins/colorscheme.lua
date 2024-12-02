return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      theme = {
        colors = {
          -- Monokai Pro Machine.
          bg = "#161b1e",
        },
      },
    })
    vim.cmd([[colorscheme cyberdream]])
  end,
}
