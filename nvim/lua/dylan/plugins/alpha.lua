return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }

    -- Set menu.
    dashboard.section.buttons.val = {
      dashboard.button("Space ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("Space ff", "󰱼  > Search file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("Space fs", "  > Search word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("q", "  > Quit nvim", "<cmd>qa<CR>"),
    }

    -- Send config to alpha.
    require("alpha").setup(dashboard.opts)

    -- Disable folding on alpha buffer.
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
