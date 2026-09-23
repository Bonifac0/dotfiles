-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env('XCURSOR_SIZE', '24')
hl.env('HYPRCURSOR_SIZE', '24')

------------------
---- MONITORS ----
------------------

hl.monitor {
  output = 'eDP-1',
  mode = '1920x1080@60',
  position = '0x0',
  scale = 1,
}

---------------
---- INPUT ----
---------------

hl.config {
  input = {
    kb_layout = 'us,cz',
    kb_variant = ',qwerty',
    kb_model = '',
    kb_options = 'caps:escape,grp:alt_shift_toggle',
    kb_rules = '',

    follow_mouse = 1,

    sensitivity = 0,

    touchpad = {
      natural_scroll = true,
    },
  },
}

hl.gesture {
  fingers = 3,
  direction = 'horizontal',
  action = 'workspace',
}

hl.device {
  name = 'epic-mouse-v1',
  sensitivity = 1,
}
