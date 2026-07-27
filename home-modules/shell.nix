{ pkgs, ...}: { 
 programs.zoxide = {
   enable = true;
   enableBashIntegration = true;
   };

   programs.bash.enable = true;
   home.shellAliases = {
           l = "eza -blF --git --header --group-directories-first --icons=auto --color=auto";
           ll = "eza -la --git --header --octal-permissions --group-directories-first --icons=auto --color=auto";
           la = "eza -la --git --header --group-directories-first --icons=auto --color=auto"; 
           lm = "eza -l --git --header --sort=modified --reverse --group-directories-first --icons=auto --color=auto";

           l1 = "eza --oneline --group-directories-first --icons=auto --color=auto";
           lt = "eza --tree --level=2 --group-directories-first --icons=auto --color=auto";
           ls = "eza --group-directories-first --icons=auto --color=auto";
           
           nrs = "sudo nixos-rebuild switch --flake ~/dotfiles#laptop"

       };

   programs.fzf = {
   enable = true;
   enableBashIntegration = true;
   };

   programs.direnv = {
       enable = true;
       enableBashIntegration = true;
       nix-direnv.enable = true;
   };


}
