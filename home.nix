{ pkgs, ... }:
{
  imports = [
    ./nixvim.nix
  ];

  home = rec {
    username = "myuron";
    homeDirectory = "/home/${username}";
    stateVersion = "25.11";
    packages = with pkgs; [
      yazi
      nixfmt
      nixfmt-tree
    ];
  };
  programs.home-manager.enable = true;

  programs = {
    git = {
      enable = true;
    };
  };
}
