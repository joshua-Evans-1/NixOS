{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.pulse;

in {
    options.modules.pulse = { enable = mkEnableOption "pulse"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			brightnessctl		# baclight daemon
			pulseaudio			# audio server
			pulsemixer			# audio mixer
		];
    };
}
