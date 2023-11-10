{ pkgs }:

{
  home-manager.enable = true;
  git = import ./git.nix;
  zsh = import ./zsh;
  vscode = import ./vscode { inherit pkgs; };
  neovim = import ./neovim { inherit pkgs; };
}
