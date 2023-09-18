{ stdenv, fetchurl, fontconfig }:

stdenv.mkDerivation rec {
  name = "my-fonts";
  src = fetchurl {
    url = /home/pavan/Apps/scripts/nix/fonts; 
  };

  nativeBuildInputs = [ fontconfig ];

  meta = with stdenv.lib; {
    description = "My custom fonts";
    license = licenses.mit;
  };
}

