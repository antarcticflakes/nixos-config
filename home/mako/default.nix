{ config, pkgs, ... }:

{
  services.mako = {
    enable = true;
  };

  home.file.".config/mako/config".source = ./config;
}
