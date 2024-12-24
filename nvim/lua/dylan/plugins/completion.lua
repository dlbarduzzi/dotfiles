return {
  "saghen/blink.cmp",
  dependencies = "rafamadriz/friendly-snippets",
  version = "*",
  opts = {
    keymap = { preset = "default" },
    appearance = {
      nerd_font_variant = "mono",
      use_nvim_cmp_as_default = true
    },
    signature = { enabled = true },
  },
}
