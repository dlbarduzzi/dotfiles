return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    enabled = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "moon",
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    enabled = true,
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
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    enabled = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup()
      vim.cmd.colorscheme("cyberdream")
    end,
  },
}
