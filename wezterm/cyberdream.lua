-- scottmckendry/cyberdream.nvim::extras/wezterm/cyberdream.lua
-- loctvl842/monokai-pro.nvim::lua/monokai-pro/colorscheme/palette/machine.lua
local colors = {
  dark1 = "#161b1e", -- Monokai Pro Machine
  dark2 = "#3c4048",
  dark3 = "#6b7678", -- Monokai Pro Machine
  white = "#ffffff",
  red = "#ff6e5e",
  green = "#5eff6c",
  yellow = "#f1ff5e",
  blue = "#5ea1ff",
  magenta = "#bd5eff",
  cyan = "#5ef1ff",
  orange = "#ffbd5e",
}

return {
	foreground = colors.white,
	background = colors.dark1,

	cursor_bg = colors.white,
	cursor_fg = colors.dark1,
	cursor_border = colors.white,

	selection_fg = colors.white,
	selection_bg = colors.dark2,

	scrollbar_thumb = colors.dark1,
	split = colors.dark1,

	ansi = {
		colors.dark1,
		colors.red,
		colors.green,
		colors.yellow,
		colors.blue,
		colors.magenta,
		colors.cyan,
		colors.white,
	},

	brights = {
		colors.dark3,
		colors.red,
		colors.green,
		colors.yellow,
		colors.blue,
		colors.magenta,
		colors.cyan,
		colors.white,
	},

	indexed = {
		[16] = colors.orange,
		[17] = colors.red,
	},
}
