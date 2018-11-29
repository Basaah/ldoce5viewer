with import <nixpkgs> {};

pythonPackages.buildPythonApplication rec {
  name = "ldoce5_2_stardict";

  src = ./.;

  preConfigure = ''
    cd ldoce5viewer/qtgui/ui/; make
    cd ../resources/; make 
    cd ../../..
  '';

  buildInputs = [stdenv];
  propagatedBuildInputs = [python27Packages.pyqt4 python27Packages.whoosh python27Packages.lxml];
}
