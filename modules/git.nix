{ pkgs, ... }: let
in {
  programs.git = {
    enable = true;
    userName  = "";
    userEmail = "";
  };
}
