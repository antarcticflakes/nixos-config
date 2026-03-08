{ config, pkgs, ... }:

{
  programs.nixvim = {
    plugins = {
      which-key.enable = true;
      nvim-autopairs.enable = true;
      rainbow-delimiters.enable = true;
      treesitter.enable = true;
      lualine = {
        enable = true;
        settings = {
          options = {
            globalstatus = true;
          };
        };
      };
      bufferline = {
        enable = true;
        settings = {
          options = {
            offsets = [{
              filetype = "neo-tree";
              text = "File Explorer";
              highlight = "Directory";
              text_align = "left";
            }];
          };
        };
      };
      neo-tree = {
        enable = true;
        settings = {
          close_if_last_window = true;
          source_selector = {
            winbar = true;
            statusline = false;
          };
        };
      };
      toggleterm = {
        enable = true;
        settings = {
          direction = "float";
        };
      };
      web-devicons.enable = true;
    };
  };
}
