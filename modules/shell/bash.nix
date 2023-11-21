{ config, ... }: {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      source ${config.home.profileDirectory}/etc/profile.d/nix.sh
    '';
    profileExtra = ''
      source ${config.home.profileDirectory}/etc/profile.d/nix.sh
      
      export XDG_DATA_DIRS=${config.home.profileDirectory}/share:$XDG_DATA_DIRS
    '';
    shellAliases = import ./aliases.nix;
  };
}
