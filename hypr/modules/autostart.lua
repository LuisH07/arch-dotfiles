hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar")
  -- dark mode
  hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'")
  hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
  -- authentication
  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
  -- notifications
  hl.exec_cmd("mako")
  -- clipse
   hl.exec_cmd("clipse -listen")
end)
