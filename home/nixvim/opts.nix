{ config, pkgs, ... }: 

{
  programs.nixvim = {
    opts = {
      number = true;
      relativenumber = true;

      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;

      shell = "bash";
    };
  };
}
