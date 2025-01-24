{
  pkgs ? import <nixpkgs> {}
}:

pkgs.mkShell {
	buildInputs = [
		pkgs.gcc        # The GNU Compiler Collection for C development
		pkgs.gdb        # GNU Debugger for debugging
		pkgs.cmake      # For using Makefiles
		pkgs.valgrind   # Memory debugging and profiling
	];

	shellHook = ''
		echo "isolated C development environment"
		echo "GCC version: $(gcc --version | head -n 1)"a

		PS1='┏━[clangenv]━━[\w]\n┗━> '
	'';
}
