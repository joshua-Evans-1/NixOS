{ inputs, pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.system;

in {
	options.modules.system = { 
		enable = mkEnableOption "wayland"; 
		programs = {
      		bottom.enable = mkOption { 
				type = types.bool; 
				default = true; 
				description = "Enable bottom."; 
			};
      		firefox.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable firefox.";
      		};
			git.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable git.";
      		};
      		home-manager.enable = mkOption {
        		type = types.bool;
        		default = true; 
				description = "Enable home-manager.";
      		};
			kitty.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable kitty.";
      		};
			neofetch.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable neofetch.";
      		};
			neovim.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable neovim.";
      		};
			nnn.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable nnn.";
      		};
			pulse.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable pulse.";
      		};
			pywal.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable pywal.";
      		};
			tmux.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable tmux.";
      		};
			tuigreet.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable tuigreet.";
      		};
			zip.enable = mkOption {
        		type = types.bool;
        		default = true; 
        		description = "Enable zip.";
      		};

    	};
	};
	
	config = mkIf cfg.enable {
		imports = [
			./bottom
			./firefox
			./git
			./home-manager
			./kitty
			./neofetch
			./neovim
			./nnn
			./pulse
			./pywal
			./tmux
			./tuigreet
			./zip
		];
	
		modules.bottom.enable = cfg.programs.bottom.enable;
		modules.firefox.enable = cfg.programs.firefox.enable;
		modules.git.enable = cfg.programs.git.enable;
		modules.home-manager.enable = cfg.programs.home-manager.enable;
		modules.kitty.enable = cfg.programs.kitty.enable;
		modules.neofetch.enable = cfg.programs.neofetch.enable;
		modules.neovim.enable = cfg.programs.neovim.enable;
		modules.nnn.enable = cfg.programs.nnn.enable;
		modules.pulse.enable = cfg.programs.pulse.enable;
		modules.pywal.enable = cfg.programs.pywal.enable;
		modules.tmux.enable = cfg.programs.tmux.enable;
		modules.tuigreet.enable = cfg.programs.tuigreet.enable;
		modules.zip.enable = cfg.programs.zip.enable;

	};
}

