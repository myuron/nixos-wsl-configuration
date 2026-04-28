{
  programs.nixvim = {
    enable = true;
    vimAlias = true;
    colorschemes = {
      catppuccin = { enable = true; };
      # tokyonight = { enable = true; };
      # ayu = { enable = true; };
      # bamboo = { enable = true; };
      # dracula = { enable = true; };
    };
    imports = [
      ./nvim/keymap.nix
      ./nvim/plugin.nix
      ./nvim/option.nix
    ];
  };
}
