
{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.x11;

in {
	options.modules.x11 = { 
		enable = mkEnableOption "x11"; 
		programs = {
      		bspwm.enable = mkOption {
        		type = types.bool;
        		default = true;
        		description = "Enable bspwm.";
      		};
      		picom.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable picom.";
      		};
      		rofi.enable = mkOption {
        		type = types.bool;
        		default = true; 
				description = "Enable rofi.";
      		};
			sxhkd.enable = mkOption {
        		type = types.bool;
        		default = true; 
				description = "Enable sxhkd.";
      		};
    	};
	};
	
	config = mkIf cfg.enable {
		imports = [
			./bspwm
			./picom
			./rofi
			./sxhkd
		];
		
		modules.bspwm.enable = cfg.programs.bspwm.enable;
		modules.picom.enable = cfg.programs.picom.enable;
		modules.rofi.enable = cfg.programs.rofi.enable;
    	modules.sxhkd.enable = cfg.programs.sxhkd.enable;

	};
}


