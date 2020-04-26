{ pkgs ? import <nixpkgs> {}}: 

with pkgs;

mkShell 
  { buildInputs = 
      [ pandoc
        graphviz
        texlive.combined.scheme-medium
      ];
  }
