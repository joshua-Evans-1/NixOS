{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.git;

in {
    options.modules.git = { enable = mkEnableOption "git"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			git					# Version control	
			gh					# github cli
		];

    };
}
