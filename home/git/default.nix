{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Antarctic Flakes";
    userEmail = "antarcticflakes@outlook.com";
  };
}
