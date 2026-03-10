{
  config,
  pkgs,
  home,
  ...
}:

{
  home.packages = with pkgs; [
    fastfetch

    zip
    xz
    unzip
    p7zip

    ripgrep
    jq
    yq-go
    fzf

    nmap

    file
    which
    gnused
    gnutar
    gawk
    zstd

    btop
    htop

    strace
    lsof
    pciutils
    usbutils

    android-tools
    qdl

    swaybg

    zig
    zls
    gcc
    gnumake
    cmake
    nasm

    mako
    wlogout
    polkit
    polkit_gnome

    xfce.thunar

    qemu
  ];
}
