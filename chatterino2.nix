{ stdenv, pkgconfig, fetchFromGitHub, qtbase, qtsvg, qtmultimedia, qmake, boost, openssl }:

stdenv.mkDerivation rec {
  pname = "chatterino2";
  version = "unstable-2019-11-14";
  src = fetchFromGitHub {
    owner = "chatterino";
    repo = pname;
    rev = "556c2aef2b2e70f08e1b54ff2be4c00dee6abb4f";
    sha256 = "09lasf1y4rdzhb638pw6m0iw0kdn9b9pz495z15msgqidfzspv5x";
    fetchSubmodules = true;
  };
  nativeBuildInputs = [ qmake pkgconfig ];
  buildInputs = [ qtbase qtsvg qtmultimedia boost openssl ];
  meta = with stdenv.lib; {
    description = "A chat client for Twitch chat";
    longDescription = ''
      Chatterino is a chat client for Twitch chat. It aims to be an
      improved/extended version of the Twitch web chat. Chatterino 2 is
      the second installment of the Twitch chat client series
      "Chatterino".
  '';
    homepage = "https://github.com/chatterino/chatterino2";
    license = licenses.mit;
    platforms = platforms.unix;
  };
}

