{ pkgs, ... }:
let
in {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;

    shellAliases = {
      cp = "cp -i";
      mv = "mv -i";
      rm = "rm -i";
    };
  };
}
