{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.sxhkdrc;

in {
    options.modules.sxhkdrc = { enable = mkEnableOption "bspwm"; };
    config = mkIf cfg.enable {
	home.packages = with pkgs; [
      	sxhkd				# Hotkey Daemon
	];
		home.file.".config/sxhkd/sxhkdrc".source = ./sxhkdrc;
    };
}
