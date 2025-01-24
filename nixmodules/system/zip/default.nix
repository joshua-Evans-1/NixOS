{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.zip;

in {
    options.modules.zip = { enable = mkEnableOption "zip"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			zip
			unzip
		];
    };
}
