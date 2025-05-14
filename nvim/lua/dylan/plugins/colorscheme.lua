-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     enabled = true,
--     priority = 1000,
--     config = function()
--       require("tokyonight").setup({
--         style = "moon",
--         styles = {
--           keywords = { italic = false },
--         },
--       })
--       vim.cmd.colorscheme("tokyonight")
--     end
--   },
-- }
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
        "which-key",
      },
      plugins = {
        bufferline = {
          underline_selected = false,
          underline_visible = false,
        },
      },
      overridePalette = function(filter)
        return {
          -- dark2 = "#1d2528",
          --    dark1 = "#1d2528",
          background = "#161b1e",
        }
      end,
    })
    vim.cmd([[colorscheme monokai-pro]])
  end,
}
