{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
  };

  networking = {
    hostName = "starlight";
    networkmanager.enable = true;
    firewall.enable = false;
  };

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      substituters = [
        "https://mirror.sjtu.edu.cn/nix-channels/store"
        "https://mirrors.ustc.edu.cn/nix-channels/store"
        "https://cache.nixos.org"
      ];
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  time.timeZone = "Asia/Shanghai";

  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    inputMethod = {
      type = "fcitx5";
      enable = true;
      fcitx5.addons = with pkgs; [
        fcitx5-gtk
        qt6Packages.fcitx5-chinese-addons
      ];
    };
  };

  services = {
    xserver = {
      enable = true;
      xkb.layout = "us";
      excludePackages = [ pkgs.xterm ];
    };
    pipewire = {
      enable = true;
      pulse.enable = true;
    };
    greetd = {
      enable = true;
      settings = {
        default_session = {
          command = ''
            ${lib.getExe pkgs.tuigreet} \
            --sessions ${config.services.displayManager.sessionData.desktops}/share/wayland-sessions \
            --time \
            --time-format '%Y-%m-%d %H:%M' \
            --asterisks \
            --remember \
            --remember-session
          '';
        };
      };
    };
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
  };

  fonts = {
    packages = with pkgs; [
      noto-fonts-color-emoji
      nerd-fonts.symbols-only
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      maple-mono.variable
    ];
    fontconfig = {
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ];
        monospace = [
          "Maple Mono NF"
          "Maple Mono"
          "Noto Sans Mono CJK SC"
          "Source Han Sans SC"
          "DejaVu Sans"
        ];
        sansSerif = [
          "Noto Sans CJK SC"
          "Source Han Sans SC"
          "DejaVu Sans"
        ];
        serif = [
          "Noto Serif CJK SC"
          "Source Han Serif SC"
          "DejaVu Serif"
        ];
      };
    };
  };

  users.users.ichiyo = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
  };

  programs = {
    niri.enable = true;
    firefox.enable = true;
    nh = {
      enable = true;
    };
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  environment = {
    systemPackages = with pkgs; [
      vim
      git
      wget
      distrobox
      xwayland-satellite
      nix-output-monitor
    ];
  };

  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
    };
  };

  security = {
    polkit = {
      enable = true;
    };
  };

  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];

  system.stateVersion = "25.11";
}

