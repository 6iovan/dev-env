{ pkgs, ... }: {

  imports = [ ./git.nix ./rusty.nix ./zsh ./bash.nix ./tmux.nix ];

  home.packages = with pkgs; [ direnv fzf jq ];

}
