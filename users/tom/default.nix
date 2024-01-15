{ pkgs, ... }: {
  users.users.tom = {
    isNormalUser = true;
    description = "Tom Buente";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };

  home-manager.users.tom = {
    home.username = "tom";
    home.homeDirectory = "/home/tom";
    home.stateVersion = "23.11";

    programs.home-manager.enable = true;

    imports = [
      ./modules/alacritty.nix
      ./modules/git.nix
      ./modules/helix.nix
      ./modules/packages.nix
      ./modules/vscode.nix
      ./modules/zsh.nix
    ];
  };
}
