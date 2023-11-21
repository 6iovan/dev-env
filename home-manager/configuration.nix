{ inputs, lib, config, pkgs, ... }: {
  nix = {
    package = pkgs.nixFlakes;

    settings.experimental-features = [ "nix-command" "flakes" ];
    settings.auto-optimise-store = true;
  };

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  systemd.user = {
    startServices = "sd-switch";
    sessionVariables.EDITOR = "nvim";
  };

  fonts.fontconfig.enable = true;
}
