{ pkgs, ... }:
let
  misc = with pkgs; [ home-manager openssl ];

  fonts = with pkgs;
    [
      (nerdfonts.override {
        fonts = [ "CascadiaCode" "FiraCode" "Iosevka" "JetBrainsMono" "Meslo" ];
      })
    ];

  c = with pkgs; [ cmake gcc pkg-config ];

  haskell = with pkgs.haskellPackages; [
    cabal-install
    cabal2nix
    ghc
    haskell-language-server
    stack
  ];

  js = with pkgs.nodePackages_latest; [ node2nix nodejs pnpm yarn ];

  nix = with pkgs; [
    cachix
    nixfmt
    nixpkgs-fmt
    update-nix-fetchgit
    nix-prefetch-github
  ];

  py = with pkgs.python311Packages; [
    # python
    pip
    virtualenv
  ];

  rust = with pkgs; [ rust-analyzer rust-bin.stable.latest.default ];
in {

  imports = [ ./editor ./shell ./browser.nix ];

  home.packages = misc ++ fonts ++ c ++ haskell ++ js ++ nix ++ py ++ rust;

}
