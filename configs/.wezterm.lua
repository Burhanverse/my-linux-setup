-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS NF")
config.font_size = 10

config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.8

config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

return config