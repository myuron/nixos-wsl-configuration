{ pkgs, ... }:
{
  programs.home-manager.enable = true;
  imports = [
    ./nixvim.nix
    ./fish.nix
    ./fzf.nix
  ];
  home = rec {
    username = "myuron";
    homeDirectory = "/home/${username}";
    stateVersion = "25.11";
    packages = with pkgs; [
      git
      gh
      ghq
      lazygit
      ripgrep
      claude-code
    ];
  };
}
