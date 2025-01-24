{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.home-manager;

in {
    options.modules.home-manager = { enable = mkEnableOption "home-manager"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			home-manager				# Browser
		];

    };
}
