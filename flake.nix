{
  description = "NixOS configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { nixpkgs, stylix, home-manager, ... }@inputs:

    let
      system = "x86_64-linux";
      extraSpecialArgs = {
        inherit system;
        inherit inputs;
      };
      specialArgs = {
        inherit system;
        inherit inputs;
      };
    in {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          inherit specialArgs;
          modules = [
            ./configuration
            stylix.nixosModules.stylix
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                inherit extraSpecialArgs;
                useGlobalPkgs = true;
                useUserPackages = true;
                users.baldev = import ./home-manager;
              };
            }
          ];
        };
      };
    };
}
