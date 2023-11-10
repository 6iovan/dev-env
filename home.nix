{ config, pkgs, ... }:

{

  home = {
    inherit (import ./modules/common/constants.nix)
      stateVersion username homeDirectory;
    shellAliases = (import ./modules/aliases.nix).shell;
    packages = import ./modules/packages { inherit pkgs; };
  };

  programs = import ./modules/programs { inherit pkgs; };

}
