{config, pkgs, ...}:

 {
   home.username = "matholl";
   home.homeDirectory = "/home/matholl";
   home.stateVersion = "26.05";

   programs.zoxide = {
   enable = true;
   enableBashIntegration = true;
   };

   programs.fzf = {
   enable = true;
   enableBashIntegration = true;
   };

   programs.kitty = {
   enable = true;
   settings = {
   font_size = "12";
   background_opacity = "0.9";
   confirm_os_window_close = 0;
     };
   };
   
   programs.git = {
   enable = true;
   settings = {
     user = {
       name = "matholl";
       email = "matheusoliveirad2005@gmail.com";
       };
     };
   };

   programs.home-manager.enable = true;
}
