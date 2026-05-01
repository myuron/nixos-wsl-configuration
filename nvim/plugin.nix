{
  plugins = {
    # ファイラー
    neo-tree = {
      enable = true;
    };
    telescope = {
      enable = true;
      settings = {
        pickers = {
          find_files = {
            hidden = true;
          };
        };
      };
      keymaps = {
        "<leader>fw" = {
          action = "live_grep";
        };
        "<leader>ff" = {
          action = "find_files";
        };
      };
    };
    # バッファ表示
    barbar = {
      enable = true;
    };
    # ステータスラインカスタマイズ
    lualine = {
      enable = true;
    };
    # インデントガイド
    hlchunk = {
      enable = true;
    };
    # モダンメッセージウィンドウ
    noice = {
      enable = true;
    };
    mini-pairs = {
      enable = true;
    };
    mini-surround = {
      enable = true;
    };
    aerial = {
      enable = true;
    };
    gitsigns = {
      enable = true;
    };
    # Gitの差分表示
    diffview = {
      enable = true;
    };
    web-devicons = {
      enable = true;
    };
    # シンタックスハイライト
    treesitter = {
      enable = true;
      settings = {
        indent = { enable = true; };
        highlight = { enable = true; };
      };
    };
    lsp = {
      enable = true;
      keymaps = {
        diagnostic = {
          "gK" = "open_float";
        };
        lspBuf = {
          "gd" = "definition";
          "K" = "hover";
          "gn" = "rename";
          "ga" = "code_action";
          "gr" = "references";
        };
      };
      servers = {
        nixd = {
          enable = true;
        };
        gopls = {
          enable = true;
        };
      };
    };
    cmp = {
      enable = true;
      settings = {
        sources = [
          {
            name = "nvim_lsp";
          }
          {
            name = "path";
          }
          {
            name = "buffer";
          }
        ];
        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(),{'i','s'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(),{'i','s'})";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
        };
      };
    };
  };
}
