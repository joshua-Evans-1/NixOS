{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.bspwm;

in {
    options.modules.bspwm = { enable = mkEnableOption "bspwm"; };
    config = mkIf cfg.enable {
	home.packages = with pkgs; [
      	bspwm				# Window manager
		xorg.xrandr			# xorg display server
      	xclip				# xorg clipboard daemon
      	xsel				# api for selection
		xorg.xinit			# initializes xserver
	];
        home.file.".config/bspwm/bspwmrc".source = ./bspwmrc;
    };
}
