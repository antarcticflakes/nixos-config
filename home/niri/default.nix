{ config, pkgs, home, ... }:

{
  home.file.".config/niri/config.kdl".source = ./config.kdl;

  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    Unit =  {
      Description = "Polkit GNOME Authentication Agent"; 
    };
    Service = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
      RestartSec = 1;
      TimeoutStopSec = 10;
    };
    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };
}
