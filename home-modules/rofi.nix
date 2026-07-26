{pkgs, ...}:

{
    programs.rofi = {
        enable = true;
        package = pgks.rofi-wayland;

        terminal = "kitty";

        extraConfig = {
            modi = "drun,run";
            show-icons = true;
            display-drun = "Apps";
        };
    };
} 
