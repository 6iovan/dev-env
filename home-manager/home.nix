{ outputs, ... }: {
  imports = [ ../modules ];

  nixpkgs.overlays =
    [ outputs.overlays.additions outputs.overlays.rust-overlay ];

  home = { sessionPath = [ "$HOME/.cargo/bin" ]; };
}
