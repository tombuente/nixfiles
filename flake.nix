{
  description = "home";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    helix.url = "github:helix-editor/helix/master";
  };

  outputs = { self, home-manager, ... }@inputs:
    let system = "x86_64-linux";
    in {
      nixosConfigurations = {
        workstation = inputs.nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/workstation
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
            }
          ];
        };
      };
    };
}
