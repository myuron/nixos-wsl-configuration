{
  keymaps = [
    {
      mode = "i";
      key = "jj";
      action = "<ESC>";
    }
    # 画面横分割
    {
      mode = "n";
      key = "ss";
      action = "<cmd>split<CR>";
    }
    # 画面縦分割
    {
      mode = "n";
      key = "sv";
      action = "<cmd>vsplit<CR>";
    }
    {
      mode = "n";
      key = "sc";
      action = "<cmd>close<CR>";
    }
    # 左の画面に移動
    {
      mode = "n";
      key = "sh";
      action = "<C-w>h";
    }
    # 下の画面に移動
    {
      mode = "n";
      key = "sj";
      action = "<C-w>j";
    }
    # 上の画面に移動
    {
      mode = "n";
      key = "sk";
      action = "<C-w>k";
    }
    # 右の画面に移動
    {
      mode = "n";
      key = "sl";
      action = "<C-w>l";
    }
    # 次のバッファに移動
    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>bnext<CR>";
    }
    # 前のバッファに移動
    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>bprev<CR>";
    }
  ];
}
