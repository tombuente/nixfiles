{
  description = "home";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    helix.url = "github:helix-editor/helix/master";
  };

  outputs = { self, home-manager, ... } @ inputs: let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      nixos = inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.tom = {
              home.username = "tom";
              home.homeDirectory = "/home/tom";
              home.stateVersion = "23.11";

              programs.home-manager.enable = true;

              imports = [
                ./modules/git.nix
                ./modules/alacritty.nix
                ./modules/helix.nix
                ./modules/vscode.nix
                ./modules/packages.nix
              ];
            };
          }
        ];
      };
    };
  };
}
