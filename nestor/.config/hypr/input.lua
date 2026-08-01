hl.config({
    input = {
        kb_layout = "us,cz",
        kb_variant = ",qwerty",
        kb_model = "",
        kb_options = "caps:escape,grp:alt_shift_toggle",
        kb_rules = "",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        },
    },
})


hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})


hl.device({
    name = "epic-mouse-v1",
    sensitivity = 1,
})
