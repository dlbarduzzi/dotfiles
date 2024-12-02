local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_rows = 30
config.initial_cols = 120

config.enable_tab_bar = false

config.colors = require("cyberdream")

config.font = wezterm.font("CaskaydiaCove Nerd Font Mono", { weight = "DemiBold" })
config.font_size = 16
config.line_height = 1.4

config.window_decorations = "RESIZE"

config.window_padding = {
	left = "1cell",
	right = "1cell",
	top = "0.3cell",
	bottom = "0cell",
}

config.keys = {
	{ key = "n", mods = "CMD|SHIFT", action = wezterm.action.ToggleFullScreen },
	{ key = "{", mods = "CMD|SHIFT", action = wezterm.action.MoveTabRelative(-1) },
	{ key = "}", mods = "CMD|SHIFT", action = wezterm.action.MoveTabRelative(1) },
}

return config
