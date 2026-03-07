{ ... }:

{
  imports = [
    ./opts.nix
    ./plugins.nix
    ./keyboard.nix
    ./completion.nix
    ./lsp.nix
  ];

  programs.nixvim = {
    enable = true;
    colorschemes.rose-pine.enable = true;
  };
}
