{
  description = "NixOS configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

  };

  outputs = {
    self,
    nixpkgs,
    stylix,
    home-manager,
    ...
  }@inputs:

  let
    lib = nixpkgs.lib;

    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {

    nixosConfigurations = {

      nixos = nixpkgs.lib.nixosSystem {

      inherit system;

        modules = [
          ./configuration
          stylix.nixosModules.stylix
	  home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.baldev = import ./home-manager;
          }
        ];
        specialArgs = { inherit pkgs; };
      };
    };
  };
}
