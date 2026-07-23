{config, pkgs, ...}:

 {
   home.username = "matholl";
   home.homeDirectory = "/home/matholl";
   home.stateVersion = "26.05";
   
   programs.bash = {
       enable = true;
   };


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

   programs.neovim ={
     enable = true;
     defaultEditor = true;

     plugins = with pkgs.vimPlugins; [
       nvim-treesitter.withAllGrammars
       nvim-lspconfig
       blink-cmp

       telescope-nvim
       plenary-nvim

       lualine-nvim
      ];

      extraPackages = with pkgs; [
         fd
	];

    };
 
   xdg.configFile."nvim" = {
   source = ./nvim;
   recursive = true;
   };

   home.packages = with pkgs; [
     wofi
     mako
     fastfetch
     ripgrep
     obsidian
     yazi
    ];
   programs.home-manager.enable = true;
}
