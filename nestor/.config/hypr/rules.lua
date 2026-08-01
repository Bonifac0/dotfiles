hl.window_rule({
    name = "suppress-maximize",
    match = {
        class = ".*"
    },

    suppress_event = "maximize",
})


hl.window_rule({
    name = "pavucontrol",
    match = {
        class = "^org.pulseaudio.pavucontrol$"
    },

    float = true,
    size = "1350 720",
    center = true,
})
