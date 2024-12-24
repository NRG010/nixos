{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix";
    nvchad4nix = {
      url = "github:nix-community/nix4nvchad";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, stylix, nvchad4nix, ...}@inputs:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
    pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
    specialArgs = { inherit system; inherit inputs; };
  in {
    nixosConfigurations.nixos = lib.nixosSystem {
      inherit system;
      modules = [
        ./nixos
        home-manager.nixosModules.home-manager
        {
	  nixpkgs = {
            overlays = [
              (final: prev: {
                nvchad = inputs.nvchad4nix.packages."${pkgs.system}".nvchad;
              })
            ];
          };
          inherit specialArgs;
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.baldev = import ./home;
        }
        stylix.nixosModules.stylix
      ];
    };
  };
}
