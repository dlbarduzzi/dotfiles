return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local colors = {
      bg = "#1d2528",
      white = "#f2fffc",
      red = "#ff6d7e",
      green = "#a2e57b",
      yellow = "#ffed72",
      blue = "#5ea1ff",
      magenta = "#baa0f8",
      --inactive_bg = "#273136",
      inactive_bg = "#1d2528",
    }

    local lualine_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.white },
        c = { bg = colors.bg, fg = colors.white },
      },
      insert = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.white },
        c = { bg = colors.bg, fg = colors.white },
      },
      visual = {
        a = { bg = colors.magenta, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.white },
        c = { bg = colors.bg, fg = colors.white },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.white },
        c = { bg = colors.bg, fg = colors.white },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.white },
        c = { bg = colors.bg, fg = colors.white },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
        b = { bg = colors.inactive_bg, fg = colors.semilightgray },
        c = { bg = colors.inactive_bg, fg = colors.semilightgray },
      },
    }

    lualine.setup({
      options = {
        theme = lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ffb270" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
