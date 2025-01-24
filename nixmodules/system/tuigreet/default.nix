{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.tuigreet;

in {
    options.modules.tuigreet = { enable = mkEnableOption "tuigreet"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			greetd.tuigreet		# Display manager
		];
    };
}
