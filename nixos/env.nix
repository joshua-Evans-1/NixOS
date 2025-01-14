# System environment configuration

{ pkgs, ... } : {
	environment = {
    	systemPackages = with pkgs; [
      		# System
      		xorg.xrandr		# xorg api server
      		xclip				# xorg clipboard daemon
      		xsel				# api for selection
	  		xorg.xinit		# initializes xserver
      		pulseaudio		# audio server
      		home-manager		# nixos-homemanager
	
			# Desktop Environment
			greetd.tuigreet	# Display manager
      		bspwm				# Window manager
      		sxhkd				# Hotkey Daemon
      		picom				# Compositor
      		rofi				# program launcher  
      		pywal				# theming tool
      		pywalfox-native	# theming tool for firefox
      		polybar			# statusbar

	  		# Programs
      		kitty				# Terminal Emulator
      		firefox			# Browser
      		ranger			# file manager
      		bottom			# System monitor
      		neofetch			# System info script
      		neovim			# Text Edittor
	  		git				# Version control	
	  		gh				# github cli
		];
	
		# set Environmental variables
    	variables = {
			EDITOR = "nvim";
	  		VISUAL = "nvim";
    	}; 
	};

	fonts.packages = with pkgs; [
		(nerdfonts.override { fonts = [ "Tinos" ]; })
	];
}
