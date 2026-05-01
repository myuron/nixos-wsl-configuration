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
    # Neo-tree
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
    }
    # Aerial
    {
      mode = "n";
      key = "<leader>a";
      action = "<cmd>AerialToggle!<CR>";
    }
    # Gitsigns
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd>Gitsigns setloclist<CR>";
    }
    {
      mode = "n";
      key = "<leader>gn";
      action = "<cmd>Gitsigns nav_hunk next<CR>";
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>Gitsigns nav_hunk prev<CR>";
    }
    # Diffview
    {
      mode = "n";
      key = "<leader>gds";
      action = "<cmd>DiffviewOpen<CR>";
    }
    {
      mode = "n";
      key = "<leader>gdh";
      action = "<cmd>DiffviewFileHistory<CR>";
    }
    {
      mode = "n";
      key = "<leader>gdc";
      action = "<cmd>DiffviewClose<CR>";
    }
  ];
}
