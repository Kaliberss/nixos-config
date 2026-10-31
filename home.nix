{inputs,config, pkgs, ...}:
{
  imports = [
  ./home-modules/shell.nix
  ./home-modules/git.nix
  ./home-modules/kitty.nix
  ./home-modules/neovim.nix
  ./home-modules/tmux.nix
  ];
 
   home.username = "matholl";
   home.homeDirectory = "/home/matholl";
   home.stateVersion = "26.05";
   

   home.packages = with pkgs; [
     vim
     fastfetch
     ripgrep
     yazi
     eza 
     bat 
     wlogout
     wl-clipboard
     btop
     thunar
     grim
     slurp
     zathura
     typst
     tinymist
     libreoffice
     inputs.noctalia.packages.${pkgs.system}.default
     feh
     opencode
    ];
   programs.home-manager.enable = true;
}
