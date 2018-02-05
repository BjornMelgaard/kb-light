{
  pkgs ? import <nixpkgs> {}
}:

with pkgs;

let
  python = python3;
  pythonPackages = python.pkgs;
in

pythonPackages.buildPythonApplication rec {
  pname = "kb-light";
  version = "0.0.1";
  name = "${pname}-${version}";

  src = ./.;

  buildInputs = [
    python
  ];

  propagatedBuildInputs = [
    pythonPackages.dbus-python
  ];

  meta = {
    homepage = https://github.com/BjornMelgaard/kb-light;
    description = "Configure keyboard light";
    license = lib.licenses.mit;
    platforms = lib.platforms.all;
  };
}

