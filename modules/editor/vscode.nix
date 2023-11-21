{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    enableExtensionUpdateCheck = true;
    enableUpdateCheck = true;

    extensions = with pkgs.vscode-extensions; [
      arrterian.nix-env-selector
      # asvetliakov.vscode-neovim
      dbaeumer.vscode-eslint
      eamodio.gitlens
      esbenp.prettier-vscode
      formulahendry.auto-close-tag
      formulahendry.auto-rename-tag
      gruntfuggly.todo-tree
      jnoortheen.nix-ide
      kamikillerto.vscode-colorize
      mhutchie.git-graph
      mikestead.dotenv
      ms-ceintl.vscode-language-pack-zh-hans
      oderwat.indent-rainbow
      rust-lang.rust-analyzer
      shd101wyy.markdown-preview-enhanced
      vscode-icons-team.vscode-icons
      yzhang.markdown-all-in-one
    ];

    userSettings = {
      "editor.bracketPairColorization.enabled" = true;
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
      "editor.formatOnPaste" = false;
      "editor.formatOnSave" = true;
      "editor.insertSpaces" = true;
      "editor.rulers" = [ 80 100 ];
      "editor.tabSize" = 2;
      "extensions.autoCheckUpdates" = false;
      "extensions.autoUpdate" = false;
      "[nix]" = { "editor.defaultFormatter" = "jnoortheen.nix-ide"; };
      "[rust]" = { "editor.defaultFormatter" = "rust-lang.rust-analyzer"; };
      "[toml]" = { "editor.defaultFormatter" = "bungcip.better-toml"; };
      "eslint.options" = {
        "extensions" = [ ".js" ".jsx" ".md" ".mdx" ".ts" ".tsx" ".vue" ];
      };
      "eslint.validate" = [
        "javascript"
        "javascriptreact"
        "markdown"
        "mdx"
        "typescript"
        "typescriptreact"
        "vue"
      ];
      "search.exclude" = {
        "*.lock" = true;
        "**/.direnv" = true;
        "**/.git" = true;
        "**/node_modules" = true;
        "dist" = true;
        "tmp" = true;
      };
    };
  };
}
