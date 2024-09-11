local wezterm = require 'wezterm'
return {
    font = wezterm.font 'JetBrains Mono',
    font_size = 12.0,
    window_background_opacity = 0.94,
    enable_scroll_bar = true,
  color_schemes = {
    ["Custom"] = {
      -- 8 basic colors
      ansi = {"#131219", "#ca527a", "#518e6f", "#e9ad7d", "#f3ee70", "#4d9ac4", "#ce70ad", "#b3b2b4"},
      brights = {"#3c3c3d", "#c71e59", "#3e6453", "#eb9b58", "#f4f05b", "#4181a7", "#b36298", "#979297"},
      -- Cursor colors
      cursor_bg = "#B5B1B5",
      cursor_fg = "#131219",
      cursor_border = "#B5B1B5",
      -- Selection colors
      selection_fg = "#989881",
      selection_bg = "#EEE9BC",
      -- Tab bar colors
      tab_bar = {
        background = "#131219",
        active_tab = {
          bg_color = "#eee",
          fg_color = "#000",
          intensity = "Bold",
        },
        inactive_tab = {
          bg_color = "#999",
          fg_color = "#444",
          intensity = "Normal",
        },
        new_tab = {
          bg_color = "#131219",
          fg_color = "#B5B1B5",
        },
      },
    },
  },

  -- Apply the custom color scheme
  color_scheme = "Custom",

  -- Set default window size and position
  window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 10,
  },

  -- Window size (width x height in pixels)
  initial_cols = 100,
  initial_rows = 30,

-- Keybindings to switch tabs
  keys = {
    -- Switch to the previous tab
    {
      key = 'LeftArrow',
      mods = 'CTRL|SHIFT',
      action = wezterm.action{ActivateTabRelative = -1},
    },
    -- Switch to the next tab
    {
      key = 'RightArrow',
      mods = 'CTRL|SHIFT',
      action = wezterm.action{ActivateTabRelative = 1},
    },
    -- Close the current tab
    {
        key = 'Q',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.CloseCurrentTab({ confirm = false }),
    },
  },
 
  -- Miscellaneous settings

  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
}
