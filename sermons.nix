{ stdenv, pandoc, texlive }:

stdenv.mkDerivation {
  name = "sermons";
  buildInputs = [ pandoc texlive ];
  src=./.;

  buildPhase = 
    ''
      mkdir -p docs/mvc
      for f in $(ls ./mvc/*.md); do
        ${pandoc}/bin/pandoc -s -o docs/mvc/$(basename -s.md $f).pdf $f
      done
    '';

    installPhase = 
      ''
        mkdir -p $out
        cp -r docs/ $out/docs
      '';
}
