{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.tmux;

in {
    options.modules.tmux = { enable = mkEnableOption "tmux"; };
    config = mkIf cfg.enable {
		home.packages = with pkgs; [	
			tmux
		];

        home.file.".config/tmux/tmux.conf".source = ./tmux.conf;
    };
}
