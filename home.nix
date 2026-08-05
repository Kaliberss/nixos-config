{config, pkgs, ...}:
{
  imports = [
  ./home-modules/shell.nix
  ./home-modules/git.nix
  ./home-modules/kitty.nix
  ./home-modules/neovim.nix
  ./home-modules/rofi.nix
  ];
 
   home.username = "matholl";
   home.homeDirectory = "/home/matholl";
   home.stateVersion = "26.05";
 
   environment.variables.TYPST_FONT_PATHS = "$HOME/.nix-profile/share/fonts:/run/current-system/sw/share/fonts";
 
   home.packages = with pkgs; [
     mako
     fastfetch
     ripgrep
     yazi
     eza 
     bat 
     wlogout
     wl-clipboard
     btop
     hyprpaper
     waybar
     thunar
     grim
     slurp
     zathura
     typst
     tinymist
    ];
   programs.home-manager.enable = true;
}
