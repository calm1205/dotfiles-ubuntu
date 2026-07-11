local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

function M.apply(config)
  config.keys = {
    {
      key = "¥",
      action = act.SendString("\\"),
    },
    {
      key = "¥",
      mods = "ALT",
      action = act.SendString("\\"),
    },
    {
      key = "t",
      mods = "CTRL",
      action = act.SpawnTab("CurrentPaneDomain"),
    },
    {
      key = "c",
      mods = "ALT|SHIFT",
      action = act.ActivateCopyMode,
    },
    {
      key = "]",
      mods = "ALT|SHIFT",
      action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "]",
      mods = "ALT|SUPER",
      action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "n",
      mods = "ALT|SHIFT",
      action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "[",
      mods = "CTRL",
      action = act.ActivatePaneDirection("Prev"),
    },
    {
      key = "]",
      mods = "CTRL",
      action = act.ActivatePaneDirection("Next"),
    },
  }
end

return M
