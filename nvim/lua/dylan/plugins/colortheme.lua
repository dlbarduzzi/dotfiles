return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priotity = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "main",
      dark_variant = "main",
      styles = {
        bold = false,
        italic = false,
      },
    })
    vim.cmd.colorscheme "rose-pine"
  end
}
