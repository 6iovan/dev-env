{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    sensibleOnTop = false;
    plugins = with pkgs;
      with tmuxPlugins; [
        sensible
        pain-control
        yank
        open
        resurrect
        catppuccin
      ];
    extraConfig = ''
      set -g base-index 1
      set -g pane-base-index 1
      set -g mouse on

      # set -g mode-keys vi
      # set -g status-keys vi

      # bind -N "Select pane to the left of the active pane" h select-pane -L
      # bind -N "Select pane below the active pane" j select-pane -D
      # bind -N "Select pane above the active pane" k select-pane -U
      # bind -N "Select pane to the right of the active pane" l select-pane -R

      bind-key -N "Kill the current window" & kill-window
      bind-key -N "Kill the current pane" x kill-pane

      unbind C-b
      set -g prefix C-a
      bind -N "Send the prefix key through to the application" \
       a send-prefix
      bind C-a last-window
    '';
  };
}
