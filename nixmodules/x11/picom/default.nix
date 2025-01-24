{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.picom;

in {
    options.modules.picom = { enable = mkEnableOption "picom"; };
    config = mkIf cfg.enable {
	home.packages = with pkgs; [
      	picom				# Compositor
	];
		home.file.".config/picom/picom.conf".source = ./picom.conf;
    };
}
