{ pkgs, ... }:
{
  programs.home-manager.enable = true;
  imports = [
    ./nixvim.nix
    ./fish.nix
    ./fzf.nix
    ./direnv.nix
    ./television.nix
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
      nix-search-tv
      llm-agents.claude-code
    ];
  };
}
