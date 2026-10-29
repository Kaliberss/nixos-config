

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

local function setup_projector()
    hl.monitor({
        output = "HDMI-A-2",
        mode = "1280x720@60",
        position = "0x0",
        scale = 1,
        mirror = "eDP-1",
    })
end

hl.on("monitor.added", function(monitor)
    if monitor.name == "HDMI-A-2" then
        setup_projector()
    end
end)
