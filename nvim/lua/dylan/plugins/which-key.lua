return {
  "folke/which-key.nvim",
  event = "VimEnter",
  opts = {
    -- Document existing key chains.
    spec = {
      { "<leader>f", group = "Find (search)" },
      { "<leader>e", group = "File explorer" },
      { "<leader>s", group = "Split (window)" },
      { "<leader>t", group = "Tabs" },
    },
    --win = {
    --  border = "rounded",
    --},
  },
}
