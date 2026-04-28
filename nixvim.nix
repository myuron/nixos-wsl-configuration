{
  programs.nixvim = {
    enable = true;
    vimAlias = true;
    colorschemes = {
      catppuccin = { enable = true; };
    };
    imports = [
      ./nvim/keymap.nix
      ./nvim/plugin.nix
      ./nvim/option.nix
    ];
  };
}
