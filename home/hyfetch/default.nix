{ config, pkgs, ... }:

{
  programs.hyfetch = {
    enable = true;
    settings = {
      backend = "fastfetch";
      preset = "nonbinary";
      pride_month_disable = false;
      mode = "rgb";
      color_align = {
        mode = "horizontal";
      };
    };
  };
}
