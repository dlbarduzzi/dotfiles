return {
  "saghen/blink.cmp",
  version = "*",
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
    },
  },
  opts = {
    keymap = { preset = "default" },
    appearance = {
      nerd_font_variant = "mono",
      use_nvim_cmp_as_default = true,
    },
    snippets = {
      expand = function(snippet)
        require("luasnip").lsp_expand(snippet.body)
      end,
      active = function(filter)
        if filter and filter.direction then
          return require("luasnip").jumpable(filter.direction)
        end
        return require("luasnip").in_snippet()
      end,
      jump = function(direction)
        require("luasnip").jump(direction)
      end,
    },
    sources = {
      default = { "lazydev", "lsp", "path", "luasnip", "buffer" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    signature = {
      enabled = true,
      window = { border = "single" }
    },
    completion = {
      menu = { border = "single" },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        window = { border = "single" },
      },
    },
  },
}
