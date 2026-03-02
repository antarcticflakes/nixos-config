{ config, pkgs, ... }:

{
  home.username = "ichiyo";
  home.homeDirectory = "/home/ichiyo";

  imports = [
    ./packages.nix
    ./git
    ./starship
    ./alacritty
    ./fuzzel
    ./niri
    ./waybar
    ./bash
    ./swaybg
    ./swayidle
    ./mako
    ./theme
  ];

  home.stateVersion = "25.11";
}
