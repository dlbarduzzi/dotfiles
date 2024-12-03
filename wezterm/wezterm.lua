local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_rows = 30
config.initial_cols = 120

config.enable_tab_bar = false

config.colors = require("cyberdream")

config.font = wezterm.font("CaskaydiaCove Nerd Font Mono", { weight = "Regular" })
config.font_size = 17
config.line_height = 1.4

config.window_decorations = "RESIZE"

config.window_padding = {
	left = "1cell",
	right = "1cell",
	top = "0.2cell",
	bottom = "0cell",
}

config.keys = {
	{ key = "n", mods = "CMD|SHIFT", action = wezterm.action.ToggleFullScreen },
	{ key = "{", mods = "CMD|SHIFT", action = wezterm.action.MoveTabRelative(-1) },
	{ key = "}", mods = "CMD|SHIFT", action = wezterm.action.MoveTabRelative(1) },
}

local border_color = "#4338ca"

config.window_frame = {
  border_left_width = "0.4cell",
  border_right_width = "0.4cell",
  border_bottom_height = "0.15cell",
  border_top_height = "0.15cell",
  border_left_color = border_color,
  border_right_color = border_color,
  border_bottom_color = border_color,
  border_top_color = border_color,
}

return config
