{config, pkgs, ...}:
{
  imports = [
  ./home-modules/shell.nix
  ./home-modules/git.nix
  ./home-modules/kitty.nix
  ./home-modules/neovim.nix
  ];
 
   home.username = "matholl";
   home.homeDirectory = "/home/matholl";
   home.stateVersion = "26.05";
   
 
   home.packages = with pkgs; [
     wofi
     mako
     fastfetch
     ripgrep
     obsidian
     yazi
     eza 
     bat 
     wlogout
     wl-clipboard
     btop
    ];
   programs.home-manager.enable = true;
}
