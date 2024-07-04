local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.colors = {
	foreground = "white",
	background = "#1A1B26",
	cursor_bg = "white",
	tab_bar = {
		background = "#16161E",
		active_tab = {
			bg_color = "#7196E4",
			fg_color = "#070A1C",
			intensity = "Bold",
			italic = true,
		},
	},
}

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.window_background_opacity = 0.97

config.keys = {
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ScrollByLine(-1),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ScrollByLine(1),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ScrollByPage(-1),
	},
	{
		key = "g",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ScrollByPage(1),
	},
}

config.warn_about_missing_glyphs = false

config.window_frame = {
	border_left_width = "0.2cell",
	border_right_width = "0.2cell",
	border_bottom_height = "0.1cell",
	border_top_height = "0.1cell",
	border_left_color = "#7196E4",
	border_right_color = "#7196E4",
	border_bottom_color = "#7196E4",
	border_top_color = "#7196E4",
}

config.window_decorations = "RESIZE"
config.line_height = 1.66
return config
