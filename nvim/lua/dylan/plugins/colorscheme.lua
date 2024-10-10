return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      styles = {
        keywords = {
          italic = false
        }
      }
    })
    vim.cmd("colorscheme tokyonight")
  end
}
