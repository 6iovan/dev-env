{
  programs.topgrade = {
    enable = true;
    settings = {
      misc = {
        disable = [ "vscode" ];
        assume_yes = true;
        cleanup = true;
        display_time = true;
        no_retry = true;
        set_title = true;
      };
      linux = { home_manager_arguments = [ "--impure" ]; };
    };
  };
}
