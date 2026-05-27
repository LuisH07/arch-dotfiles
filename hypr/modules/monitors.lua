hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@179.96",
	position = "0x0",
	scale = "1",
})

hl.monitor({
	output = "eDP-1",
	mode = "1920x1080@60",
	position = "-1920x0",
	scale = "1",
})

-- workspaces 1-5 on built-in monitor
hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1", persistent = true })

-- workspaces 6-10 on monitor
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = "7", monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = "8", monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = "9", monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-1", persistent = true })