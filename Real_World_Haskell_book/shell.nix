let
    ghcVer = "ghc865";
    pkgs = import <nixpkgs-unstable> {};
    allhies = import (fetchTarball "https://github.com/infinisil/all-hies/tarball/master") {};
    hie = allhies.selection { selector = p: { "${ghcVer}" = p."${ghcVer}"; }; };
in
    pkgs.mkShell rec {
        LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (buildInputs);
        buildInputs = [ hie ] ++ (with pkgs; [
            ghc pkgconfig stack
            libffi freeglut haskellPackages.cabal-install
            haskellPackages.hlint
            haskellPackages.hsimport
        ]);
    }
