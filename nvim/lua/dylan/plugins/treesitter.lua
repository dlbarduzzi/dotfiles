return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      modules = {},
      auto_install = true,
      sync_install = false,
      ignore_install = {},
      highlight = {
        enable = true,
        disable = function(_, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        additional_vim_regex_highlighting = false,
      },
      ensure_installed = {
        -- Required parsers.
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        -- Other parsers.
        "bash",
        "cmake",
        "css",
        "dockerfile",
        "gitignore",
        "go",
        "graphql",
        "groovy",
        "html",
        "java",
        "javascript",
        "json",
        "make",
        "prisma",
        "python",
        "regex",
        "sql",
        "terraform",
        "toml",
        "tsx",
        "typescript",
        "yaml",
      },
    })
    -- Register additional file extensions.
    vim.filetype.add({ extension = { tf = "terraform" } })
    vim.filetype.add({ extension = { tfvars = "terraform" } })
    vim.filetype.add({ extension = { mdx = "markdown" } })
  end,
}
