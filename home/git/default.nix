{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Antarctic Flakes";
        email = "antarcticflakes@outlook.com";
      };
    };
  };
}
