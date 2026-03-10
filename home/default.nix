{
  config,
  pkgs,
  nixvim,
  ...
}:

{
  home.username = "ichiyo";
  home.homeDirectory = "/home/ichiyo";

  imports = [
    nixvim.homeModules.nixvim
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
    ./nixvim
    ./hyfetch
    ./theme
  ];

  home.stateVersion = "25.11";
}
