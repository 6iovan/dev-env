{ lib, fetchFromGitHub, python3Packages }:

python3Packages.buildPythonPackage {
  pname = "kinto";
  version = "6f42c68";
  format = "pyproject";
  src = fetchFromGitHub {
    owner = "rbreaves";
    repo = "kinto";
    rev = "6f42c68e4b9d2988bd26aafcc42640cc63057fa7";
    sha256 = "sha256-Gh581j0u1L3HNs444k6cojYAS6gq98wAv8Xbd6NqHl0=";
  };
  propagatedBuildInputs = [ python3Packages.setuptools python3Packages.wheel ];
  meta = with lib; {
    description = "Mac-style shortcut keys for Linux & Windows.";
    homepage = "https://github.com/rbreaves/kinto";
    license = licenses.gpl2;
    maintainers = with maintainers; [ xkeysnail ];
  };
}
