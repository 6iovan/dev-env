let constants = import ../../common/constants.nix;
in {
  programs.git = {
    enable = true;
    userName = constants.gitName;
    userEmail = constants.gitEmail;
    delta.enable = true;
    lfs.enable = false;
    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      core.compression = 0;
      http.postBuffer = 1048576000;
      protocol."https".allow = "always";
      url."https://github.com/".insteadOf = [ "gh:" "github:" ];
    };
  };
}
