{
  config,
  pkgs,
  home,
  ...
}:

{
  programs.waybar = {
    enable = true;
  };

  home.file.".config/waybar".source = ./config;
}
