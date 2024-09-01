{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.openjdk
    pkgs.tlaplus
  ];

  shellHook = ''
    export TLA_CLASSPATH=${pkgs.tlaplus}/share/java/tla2tools.jar
  '';
}

