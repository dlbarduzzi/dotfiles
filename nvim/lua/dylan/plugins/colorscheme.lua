return {
--  "folke/tokyonight.nvim",
--  priority = 1000,
--  config = function()
--    require("tokyonight").setup({
--      style = "moon",
--      styles = {
--        keywords = {
--          italic = false
--        }
--      }
--    })
--    vim.cmd("colorscheme tokyonight")
--  end
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  name = "monokai-pro",
  priority = 1000,
  config = function()
    require("monokai-pro").setup({
      filter = "machine"
    })
    vim.cmd.colorscheme "monokai-pro"
  end
}
