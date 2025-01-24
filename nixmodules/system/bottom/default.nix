{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.bottom;

in {
    options.modules.bottom = { enable = mkEnableOption "bottom"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			bottom				# System monitor
		];

    };
}
