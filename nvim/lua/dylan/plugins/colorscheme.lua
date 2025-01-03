--return {
--  "folke/tokyonight.nvim",
--  lazy = false,
--  priority = 1000,
--  config = function()
--    require("tokyonight").setup({
--      style = "moon",
--    })
--    vim.cmd.colorscheme("tokyonight")
--  end
--}
return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      no_bold = true,
      no_italic = true,
      integrations = {
        blink_cmp = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
