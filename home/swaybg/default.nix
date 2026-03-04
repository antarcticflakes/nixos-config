{ config, pkgs, ... }:

{
  home.file.".config/wallpapers" = {
    source = ./wallpapers;
    recursive = true;
  };

  systemd.user.services.swaybg = {
    Unit = {
      Description = "The wallpaper.";
      PartOf = "graphical-session.target";
      After = "graphical-session.target";
      Requisite = "graphical-session.target";
    };
    Service = {
      ExecStart = "${pkgs.swaybg}/bin/swaybg -m fill -i \"${config.home.homeDirectory}/.config/wallpapers/rose-pine-nix.png\"";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "niri.service" ];
    };
  };
}
