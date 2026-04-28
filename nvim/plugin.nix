{
  plugins = {
    bufferline = {
      enable = true;
    };
    mini-pairs = {
      enable = true;
    };
    web-devicons = {
      enable = true;
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
            priority = 1000;
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
