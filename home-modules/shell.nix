{ pkgs, ...}: { 
 programs.zoxide = {
   enable = true;
   enableBashIntegration = true;
   };

   programs.bash = {
       enable = true;
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
