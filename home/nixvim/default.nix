{ ... }:

{
  imports = [
    ./opts.nix
    ./plugins.nix
  ];

  programs.nixvim = {
    enable = true;
    colorschemes.rose-pine.enable = true;
  };
}
