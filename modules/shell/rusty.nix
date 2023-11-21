{ pkgs, ... }:
let
  misc = with pkgs; [
    bat
    bottom
    broot
    du-dust
    eza
    fd
    procs
    ripgrep
    sd
    tealdeer
    xcp
    zoxide
  ];

  tool = with pkgs; [
    # bandwhich
    delta
    gitui
    grex
    hyperfine
    mprocs
    # pueue
    tokei
    # watchexec
    xh
  ];
in {

  imports = [ ./alacritty.nix ./topgrade.nix ];

  home.packages = misc ++ tool;

}
