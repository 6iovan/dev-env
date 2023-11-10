{
  enable = true;
  enableAutosuggestions = false;
  enableCompletion = true;
  autocd = true;
  shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch";
  };
  oh-my-zsh = {
    enable = true;
    plugins = [ "git" "npm" ];
    theme = "robbyrussell";
  };

  initExtra = import ./initExtra.nix;
  initExtraBeforeCompInit = import ./initExtraBeforeCompInit.nix;
}
