{ pkgs, ...}:

{
 hardware.graphics.enable = true; 
 programs.uwsm.enable = true;
 programs.hyprland{
     enable = true;
     withUWSM = true;
 };

 services.greetd = {
	enable = true;
	settings = {
		default_session = {
			command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd start-hyprland";
			user = "greeter";
			};
		};
	};
}
