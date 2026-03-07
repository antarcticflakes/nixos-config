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
              filetype = "NvimTree";
              text = "File Explorer";
              highlight = "Directory";
              text_align = "left";
            }];
          };
        };
      };
      nvim-tree = {
        enable = true;
        autoClose = true;
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
