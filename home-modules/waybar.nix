{ pkgs, ... }: {
  programs.waybar = {
    enable = true;
    
    # JSON configuration for Waybar modules and layout
    settings = [{
      layer = "top";
      position = "top";
      height = 30;
      spacing = 4;
      
      modules-left = [ "hyprland/workspaces" "hyprland/window" ];
      modules-center = [ "clock" ];
      modules-right = [ "pulseaudio" "network" "battery" "tray" ];

      "hyprland/workspaces" = {
        format = "{icon}";
        on-click = "activate";
      };

      clock = {
        format = "{:%H:%M - %d/%m/%Y}";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      };

      battery = {
        states = {
          warning = 30;
          critical = 15;
        };
        format = "{capacity}% {icon}";
        format-icons = ["󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
      };

      network = {
        format-wifi = "{essid} ({signalStrength}%) ";
        format-disconnected = "Disconnected ⚠";
      };

      pulseaudio = {
        format = "{volume}% {icon}";
        format-muted = "Muted 󰝟";
        format-icons = {
          default = ["󰕿" "󰖀" "󰕾"];
        };
      };
    }];

    # Optional: CSS Styling directly inside Nix
    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 13px;
      }

      window#waybar {
        background: rgba(29, 32, 33, 0.85);
        color: #ebdbb2;
        border-bottom: 2px solid #504945;
      }

      #workspaces button {
        padding: 0 5px;
        color: #ebdbb2;
      }

      #workspaces button.active {
        background: #504945;
        border-radius: 4px;
      }

      #clock, #battery, #pulseaudio, #network {
        padding: 0 10px;
      }
    '';
  };
}































