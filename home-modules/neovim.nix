{ pkgs, ...}: {
    
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

       tokyonight-nvim
      ];

      extraPackages = with pkgs; [
         fd
	];

    };
 
   xdg.configFile."nvim" = {
   source = ./nvim;
   recursive = true;
   };
}
