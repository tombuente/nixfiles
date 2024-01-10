{ pkgs, ... }: let
in {
  programs.alacritty = {
    enable = true;
  };

  xdg.configFile."alacritty/alacritty.toml".text = builtins.readFile ../config/alacritty.toml;
}
