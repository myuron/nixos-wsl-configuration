{
  programs.nixvim = {
    enable = true;
    vimAlias = true;
    imports = [
      ./nvim/keymap.nix
      ./nvim/plugin.nix
      ./nvim/option.nix
    ];
  };
}
