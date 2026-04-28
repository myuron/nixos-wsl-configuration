{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nixvim,
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          system = system;
          modules = [
            ./configuration.nix
          ];
        };
      };
      homeConfigurations = {
        home = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs {
            system = system;
            config.allowUnfree = true;
          };
          extraSpecialArgs = {
            inherit nixpkgs;
          };
          modules = [
            ./home.nix
            nixvim.homeModules.nixvim
          ];
        };
      };
      apps.${system} = {
        home-manager-build = {
          type = "app";
          program = toString (
            pkgs.writeShellScript "home-manager build" ''
              	  set -e
              	  echo "home-manager build..."
              	  home-manager switch --flake .#home
              	''
          );
        };
      };
    };
}
