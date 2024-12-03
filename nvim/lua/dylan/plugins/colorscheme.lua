return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-pro").setup({
      filter = "machine",
      background_clear = {
        "nvim-tree",
        "bufferline",
        "telescope",
        "float_win",
      },
      plugins = {
        bufferline = {
          underline_selected = false,
          underline_visible = false,
        },
      },
      overridePalette = function(filter)
        return {
          dark2 = "#273136",
          dark1 = "#1d2528",
          background = "#161b1e",
        }
      end
    })
    vim.cmd([[colorscheme monokai-pro]])
  end,
}
