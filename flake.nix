{
  description = "rusty devenv";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { self, nixpkgs, home-manager, rust-overlay, ... }@inputs:
    let
      inherit (self) outputs;
      SYSTEM = builtins.currentSystem;
      USER = builtins.getEnv "USER";
      HOME = builtins.getEnv "HOME";
    in {
      overlays = import ./overlays { inherit inputs; };

      homeConfigurations = {
        ${USER} = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${SYSTEM};
          extraSpecialArgs = { inherit inputs outputs; };
          modules = [
            {
              home = {
                stateVersion = "23.11";
                username = USER;
                homeDirectory = HOME;
              };
            }
            ./home-manager/configuration.nix
            ./home-manager/home.nix
          ];
        };
      };
    };

}
