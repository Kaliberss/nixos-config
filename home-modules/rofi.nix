{pkgs, ...}:

{
    programs.rofi = {
        enable = true;

        terminal = "kitty";

        extraConfig = {
            modi = "drun,run";
            show-icons = true;
            display-drun = "Apps";
        };
    };
} 
