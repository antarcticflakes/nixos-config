{ ... }:

{
  programs.nixvim = {
    enable = true;
    opts = {
      number = true;
      relativenumber = true;
    };
    colorschemes.rose-pine.enable = true;
  };
}
