with import ../common/constants.nix;

{
  enable = true;
  inherit userName userEmail;
  delta.enable = true;
  lfs.enable = false;
  aliases = (import ../aliases.nix).git;
  extraConfig = {
    init.defaultBranch = "main";
    push.autoSetupRemote = true;
    core.compression = 0;
    http.postBuffer = 1048576000;
    protocol."https".allow = "always";
    url."https://github.com/".insteadOf = [ "gh:" "github:" ];
  };
}
