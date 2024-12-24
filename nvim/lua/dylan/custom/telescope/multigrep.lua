local M = {}

local finders = require("telescope.finders")
local pickers = require("telescope.pickers")
local make_entry = require("telescope.make_entry")
local conf_values = require("telescope.config").values

local live_multigrep = function(opts)
  opts = opts or {}
  opts.cwd = opts.cwd or vim.uv.cwd()

  local finder = finders.new_async_job({
    command_generator = function(prompt)
      if not prompt or prompt == "" then
        return nil
      end

      local args = { "rg" }
      local pieces = vim.split(prompt, "  ")

      if pieces[1] then
        table.insert(args, "-e")
        table.insert(args, pieces[1])
      end

      if pieces[2] then
        table.insert(args, "-g")
        table.insert(args, pieces[2])
      end

      ---@diagnostic disable-next-line: deprecated
      return vim.tbl_flatten {
        args,
        { "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case" },
      }
    end,
    entry_maker = make_entry.gen_from_vimgrep(opts),
    cwd = opts.cwd
  })

  pickers.new(opts, {
    finder = finder,
    debouce = 100,
    prompt_title = "Multi Grep",
    previewer = conf_values.grep_previewer(opts),
    sort = require("telescope.sorters").empty(),
  }):find()
end

M.setup = function()
  vim.keymap.set("n", "<leader>fg", live_multigrep)
end

return M

