local terminal = "kitty"
local fileManager = "nautilus"
local browser = "brave & disown"
local launcher = "~/.config/rofi/launchers/type-6/launcher.sh"
local runner = "~/.config/rofi/launchers/type-6/runner.sh"
local fileExplorer = "~/.config/rofi/launchers/type-6/fileexplorer.sh"
local window = "~/.config/rofi/launchers/type-6/window.sh"
local music = "spotify & disown"
local waybar = "~/.config/waybar/launch.sh"
local screenshot = "hyprshot -m region -o ~/Pictures/Screenshots"
local logout = "wlogout -l ~/.config/wlogout/layout.json -p layer-shell"

local mainMod = "SUPER"
local secondMod = "SUPER + SHIFT"

-- apps
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(music))
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(launcher))
hl.bind(secondMod .. " + Space", hl.dsp.exec_cmd(runner))
hl.bind(secondMod .. " + E", hl.dsp.exec_cmd(fileExplorer))
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd(window))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(waybar))
hl.bind(secondMod .. " + S", hl.dsp.exec_cmd(screenshot))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd(logout))

hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(secondMod .. " + Escape", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

hl.bind(secondMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(secondMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + G", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J",  hl.dsp.focus({ direction = "down" }))

hl.bind(secondMod .. " + H",  hl.dsp.window.move({ direction = "left" }))
hl.bind(secondMod .. " + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(secondMod .. " + K",    hl.dsp.window.move({ direction = "up" }))
hl.bind(secondMod .. " + J",  hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with secondMod + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(secondMod .. " + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
