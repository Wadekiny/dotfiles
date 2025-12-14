-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.initial_cols = 130
config.initial_rows = 32

-- config.color_scheme = 'Bamboo'
-- config.color_scheme = 'Tokyo Night (Gogh)'
-- config.color_scheme = "catppuccin-mocha"
config.color_scheme = "Kanagawa Dragon (Gogh)"
config.colors = {
	-- background = '#212220',
	tab_bar = {
		background = '#212220',
	}
}


config.font = wezterm.font_with_fallback {
  'JetbrainsMono Nerd Font',
}
config.font_size = 15



config.use_fancy_tab_bar = true
config.show_close_tab_button_in_tabs = false
config.enable_tab_bar = true
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_and_split_indices_are_zero_based = false
config.tab_max_width  = 50


config.macos_window_background_blur = 100
config.window_background_opacity = 1.0
config.window_decorations = "RESIZE"
config.line_height = 1.0


config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 700
config.animation_fps = 60


config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'JetbrainsMono Nerd Font', weight = 'Bold' },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 14.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#333333',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#333333',
}

config.colors = {
  tab_bar = {
    -- The color of the inactive tab bar edge/divider
    inactive_tab_edge = '#575757',
  },
}
return config
