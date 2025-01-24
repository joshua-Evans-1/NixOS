{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.wayland;

in {
	options.modules.wayland = { 
		enable = mkEnableOption "wayland"; 
		programs = {
      		hyprland.enable = mkOption {
        		type = types.bool;
        		default = true;
        		description = "Enable Hyprland.";
      		};
      		swww.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable swww.";
      		};
			waybar.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable Waybar.";
      		};
      		wofi.enable = mkOption {
        		type = types.bool;
        		default = true; 
				description = "Enable Wofi.";
      		};
    	};
	};
	
	config = mkIf cfg.enable {
		imports = [
			./hyprland
			./swww
			./waybar
			./wofi
		];
		
		modules.hyprland.enable = cfg.programs.hyprland.enable;
		modules.swww.enable = cfg.programs.swww.enable;
		modules.waybar.enable = cfg.programs.waybar.enable;
    	modules.wofi.enable = cfg.programs.wofi.enable;

	};
}


