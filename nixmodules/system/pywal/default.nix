{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.system;

in {
    options.modules.system = { enable = mkEnableOption "system"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			feh
			pywal				# theming tool
			pywalfox-native		# theming tool for firefox
		];

    };
}
