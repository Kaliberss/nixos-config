{pkgs, ...}:
{
   environment.systemPackages = with pkgs; [
     neovim 
     wget
     git
     curl
     kitty
     waybar
     wofi
     mako
     fastfetch
     fzf
     ripgrep
     obsidian
     yazi
     zoxide
   ];
}
