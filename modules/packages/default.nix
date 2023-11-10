{ pkgs }:

let

  basic = with pkgs; [
  ];

  local = import ./local.nix { inherit pkgs; };

  nix = with pkgs; [
    # cachix
    nixfmt
    nixpkgs-fmt
    # nix-init
  ];

  db = with pkgs; [ ];

  devOps = with pkgs; [ ];

  rust = with pkgs; [ rust-analyzer ];

  js = (with pkgs; [ ]) ++ (with pkgs.nodePackages;
    [
      # pnpm
      # yarn
    ]);

  python = with pkgs;
    [ python310 ] ++ (with pkgs.python310Packages;
    [
      # httpie
      # pip
      # virtualenv
    ]);

in
basic ++ local ++ nix ++ db ++ devOps ++ rust ++ js ++ python
