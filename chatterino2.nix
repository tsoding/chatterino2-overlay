{ stdenv, pkgconfig, fetchFromGitHub, qtbase, qtsvg, qtmultimedia, qmake, boost, openssl }:

stdenv.mkDerivation rec {
  pname = "chatterino2";
  version = "unstable-2019-06-23";
  src = fetchFromGitHub {
    owner = "chatterino";
    repo = pname;
    rev = "fe69dfb5e079581df390280a77536dad72db8eea";
    sha256 = "1c3sl1q5cark5d733h41rp1psva3qg4lqw4ns2yh36zxi7scgljw";
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

