{
  ".." = "cd ..";
  "..." = "cd ../..";
  "...." = "cd ../../..";
  cat = "bat";
  cp = "xcp";
  du = "dust";
  fcd = "cd $(find -type d | fzf)";
  ls = "eza";
  tree = "eza --tree";
  ps = "procs";
  top = "btm";
  gitignore = "curl -sL https://www.gitignore.io/api/$argv";
}
