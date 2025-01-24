{ inputs, pkgs, config, ... }:

{
	imports = [
		./system
		./wayland
		./x11
	];
}

