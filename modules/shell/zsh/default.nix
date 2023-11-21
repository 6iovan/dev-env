{ pkgs, config, ... }: {
  home.file.".config/powerlevel10k/p10k.zsh".source = ./p10k.zsh;

  programs.zsh = {
    enable = true;
    autocd = true;
    # defaultKeymap = null; # "emacs", "vicmd", "viins"
    localVariables = { ZSH_TMUX_AUTOSTART = true; };
    history = {
      save = 10000;
      size = 10000;
      expireDuplicatesFirst = true;
      ignoreDups = true;
      ignoreSpace = true;
    };
    completionInit = "";
    profileExtra = ''
      source ${config.home.profileDirectory}/etc/profile.d/nix.sh

      export XDG_DATA_DIRS=${config.home.profileDirectory}/share:$XDG_DATA_DIRS
    '';
    initExtraFirst = ''
      source ${config.home.profileDirectory}/etc/profile.d/nix.sh

      if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
        source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
      fi
    '';
    initExtra = ''
      if zplug check romkatv/powerlevel10k; then
        source "''${XDG_CONFIG_HOME:-$HOME/.config}/powerlevel10k/p10k.zsh"
      fi
    '';
    shellGlobalAliases = {
      eza = "eza --icons --git --color=auto --group-directories-first";
    };
    shellAliases = import ../aliases.nix;
    zplug = {
      enable = true;
      plugins = [
        {
          name = "Aloxaf/fzf-tab";
          tags = [ "depth:1" "defer:2" ];
        }
        {
          name = "zdharma-continuum/fast-syntax-highlighting";
          tags = [ "depth:1" "defer:2" ];
        }
        {
          name = "zsh-users/zsh-autosuggestions";
          tags = [ "depth:1" "defer:2" ];
        }
        {
          name = "zsh-users/zsh-history-substring-search";
          tags = [ "depth:1" "defer:2" ];
        }
        {
          name = "lib/clipboard";
          tags = [ "depth:1" "from:oh-my-zsh" ];
        }
        {
          name = "plugins/fzf";
          tags = [ "depth:1" "from:oh-my-zsh" ];
        }
        {
          name = "plugins/git";
          tags = [ "depth:1" "from:oh-my-zsh" ];
        }
        {
          name = "plugins/tmux";
          tags = [ "depth:1" "from:oh-my-zsh" ];
        }
        {
          name = "plugins/zoxide";
          tags = [ "depth:1" "from:oh-my-zsh" ];
        }
        {
          name = "babarot/enhancd";
          tags = [ "depth:1" ];
        }
        {
          name = "chisui/zsh-nix-shell";
          tags = [ "depth:1" ];
        }
        {
          name = "ptavares/zsh-direnv";
          tags = [ "depth:1" ];
        }
        {
          name = "reegnz/jq-zsh-plugin";
          tags = [ "depth:1" ];
        }
        {
          name = "romkatv/powerlevel10k";
          tags = [ "depth:1" "as:theme" ];
        }
      ];
    };
  };
}
