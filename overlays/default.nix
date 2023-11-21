{ inputs, ... }: {
  additions = (import ../pkgs).overlay;
  rust-overlay = inputs.rust-overlay.overlays.default;
}
