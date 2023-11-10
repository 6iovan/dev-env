{ pkgs }:

{
  enable = true;
  defaultEditor = true;
  viAlias = true;
  vimAlias = true;

  extraConfig = (builtins.readFile ./.vimrc);

  # Neovim plugins
  plugins = with pkgs.vimPlugins; [
    ctrlp
    editorconfig-vim
    gruvbox
    nerdtree
    tabular
    vim-elixir
    vim-nix
  ];
}
