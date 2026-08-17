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
    
   services.hyprpaper = {
       enable = true;
       settings = {
           preload = [
           "/home/matholl/wallpapers/wp.png"
           ];
           
           wallpaper = [
           {
               monitor = "";
               path = "/home/matholl/wallpapers/wp.png";
               fit_mode = "cover";
           }
        ];
        splash = false;
     };
  };
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
