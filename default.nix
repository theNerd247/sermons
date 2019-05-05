{ pkgs ? import <nixpkgs> {}}:

pkgs.callPackage ./sermons.nix {
  texlive = pkgs.texlive.combined.scheme-small;
}
