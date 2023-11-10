{ pkgs }:

{
  enable = true;
  package = pkgs.vscode;
  extensions = with pkgs.vscode-extensions; [
    jnoortheen.nix-ide
    arrterian.nix-env-selector
    eamodio.gitlens
    ms-ceintl.vscode-language-pack-zh-hans
    vscode-icons-team.vscode-icons
    rust-lang.rust-analyzer
    # vscodevim.vim
    mikestead.dotenv
    esbenp.prettier-vscode
    dbaeumer.vscode-eslint
    kamikillerto.vscode-colorize
    oderwat.indent-rainbow
    mhutchie.git-graph
    formulahendry.auto-rename-tag
    formulahendry.auto-close-tag
    gruntfuggly.todo-tree
    yzhang.markdown-all-in-one
    shd101wyy.markdown-preview-enhanced
  ];
  userSettings = {
    "editor.tabSize" = 2;
    "editor.rulers" = [ 80 100 ];
    "editor.formatOnPaste" = false;
    "editor.formatOnSave" = true;
    "editor.insertSpaces" = true;
    "extensions.autoUpdate" = true;
    "extensions.autoCheckUpdates" = true;
    "editor.bracketPairColorization.enabled" = true;
    "editor.defaultFormatter" = "esbenp.prettier-vscode";
    "[nix]" = {
      "editor.defaultFormatter" = "jnoortheen.nix-ide";
    };
    "[rust]" = {
      "editor.defaultFormatter" = "rust-lang.rust-analyzer";
    };
    "[toml]" = {
      "editor.defaultFormatter" = "bungcip.better-toml";
    };
    "eslint.options" = {
      "extensions" = [
        ".js"
        ".jsx"
        ".md"
        ".mdx"
        ".ts"
        ".tsx"
        ".vue"
      ];
    };
    "eslint.validate" = [
      "markdown"
      "mdx"
      "javascript"
      "javascriptreact"
      "typescript"
      "typescriptreact"
      "vue"
    ];
    "search.exclude" = {
      "**/.direnv" = true;
      "**/.git" = true;
      "**/node_modules" = true;
      "*.lock" = true;
      "dist" = true;
      "tmp" = true;
    };
  };

}
