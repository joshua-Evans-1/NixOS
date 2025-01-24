{
  pkgs ? import <nixpkgs> {}
}:

pkgs.mkShell {
	buildInputs = [
		nodejs_23
	];

	shellHook = ''
		echo "isolated nodejs development environment"
		echo "GCC version: $(node --version | head -n 1)"
	'';
}
