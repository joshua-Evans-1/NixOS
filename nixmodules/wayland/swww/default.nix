{ pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.swww;

in {
    options.modules.swww = { enable = mkEnableOption "swww"; };
    	config = mkIf cfg.enable {
			home.packages = with pkgs; [
				swww				# wallpaper daemon
    		];

        	home.file.".config/hypr/start.sh".source = ./start.sh;
		};

}
