{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.neofetch;

in {
    options.modules.neofetch = { enable = mkEnableOption "neofetch"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			neofetch
		];
        home.file.".config/neofetch/config.conf".source = ./config.conf;
    };
}
