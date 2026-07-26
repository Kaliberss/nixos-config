{ pkgs, ...}: {
    
   programs.git = {
   enable = true;
   settings = {
     user = {
       name = "matholl";
       email = "matheusoliveirad2005@gmail.com";
       };
     };
   };
}
