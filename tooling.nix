# Packages that are not required for building, just as tools.  For example
# linters, formatters, etc.

let
  pkgs = (import ./default.nix).pkgs;
in with pkgs.haskellPackages; [
  ghcid

  brittany

  apply-refact  # for hlint
  hlint

  pkgs.gitAndTools.pre-commit
]
