{ config, pkgs, ... }:

{
  home.pointerCursor = {
    gtk.enable = true;
    name = "BreezeX-RosePine-Linux";
    package = pkgs.rose-pine-cursor;
    size = 32;
  };

  gtk = {
    enable = true;
    theme = {
      name = "rose-pine";
      package = pkgs.rose-pine-gtk-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style = {
      name = "kvantum";
      package = pkgs.rose-pine-kvantum;
    };
  };
}
