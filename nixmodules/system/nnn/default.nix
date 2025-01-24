{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.nnn;

in {
    options.modules.nnn = { enable = mkEnableOption "nnn"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			nnn					# file manager
		];

    };
}
