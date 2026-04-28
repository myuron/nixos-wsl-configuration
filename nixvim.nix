{
  programs.nixvim = {
    imports = [
      ./nvim/keymap.nix
      ./nvim/plugin.nix
      ./nvim/option.nix
    ];
    enable = true;
    vimAlias = true;
  };
}
