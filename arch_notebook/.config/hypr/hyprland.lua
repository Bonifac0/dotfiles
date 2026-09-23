require 'keybinds'
require 'animations'
require 'common'
require 'lookandfeel'

-------------------
---- AUTOSTART ----
-------------------

hl.on('hyprland.start', function()
  hl.exec_cmd 'waybar'
  hl.exec_cmd 'hyprpaper'
  hl.exec_cmd 'hyprsunset'
  hl.exec_cmd 'hypridle'
end)

-----------------------
----- PERMISSIONS -----
-----------------------

-- Permission changes require a Hyprland restart.

-- hl.config({
--     ecosystem = {
--         enforce_permissions = true,
--     },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission(
--     "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland",
--     "screencopy",
--     "allow"
-- )
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


-----------------------------
---- WINDOWS AND WORKSPACES
-----------------------------

hl.window_rule {
  name = 'suppress-maximize-events',

  match = {
    class = '.*',
  },

  suppress_event = 'maximize',
}

hl.window_rule {
  name = 'fix-xwayland-drags',

  match = {
    class = '^$',
    title = '^$',
    xwayland = true,
    float = true,
    fullscreen = false,
    pin = false,
  },

  no_focus = true,
}

hl.window_rule {
  name = 'move-hyprland-run',

  match = {
    class = 'hyprland-run',
  },

  move = '20 monitor_h-120',
  float = true,
}

--------------------
---- PAVUCONTROL ----
--------------------

hl.window_rule {
  name = 'pavucontrol-float',

  match = {
    class = '^(org.pulseaudio.pavucontrol)$',
  },

  float = true,
}

hl.window_rule {
  name = 'pavucontrol-size',

  match = {
    class = '^(org.pulseaudio.pavucontrol)$',
  },

  size = '1350 720',
}

hl.window_rule {
  name = 'pavucontrol-center',

  match = {
    class = '^(org.pulseaudio.pavucontrol)$',
  },

  center = true,
}
