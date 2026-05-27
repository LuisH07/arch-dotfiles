hl.config({
    input = {
        kb_layout  = "br",
        kb_variant = "abnt2",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        repeat_rate = 30,
        repeat_delay = 250,

        follow_mouse = 1,
        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.2,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
