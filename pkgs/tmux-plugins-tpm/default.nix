{ stdenv, lib, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "tpm";
  version = "v3.1.0";

  src = fetchFromGitHub {
    owner = "tmux-plugins";
    repo = pname;
    rev = version;
    hash = "sha256-CeI9Wq6tHqV68woE11lIY4cLoNY8XWyXyMHTDmFKJKI=";
  };

  installPhase = ''
    mkdir -p $out
    cp -R . $out
  '';

  meta = with lib; {
    description = "Tmux Plugin Manager";
    homepage = "https://github.com/tmux-plugins/tpm";
    license = licenses.mit;
    maintainers = with maintainers; [ tmux ];
  };
}
