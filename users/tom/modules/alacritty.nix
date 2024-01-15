{ pkgs, ... }: let
in {
  programs.alacritty = {
    enable = true;
  };

  xdg.configFile."alacritty/alacritty.toml".text = builtins.readFile ../dotfiles/alacritty/alacritty.toml;
}
