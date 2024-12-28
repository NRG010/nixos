{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./mpv.nix
    ./wofi.nix
    ./yazi.nix
    ./kitty.nix
    ./neovim.nix
    ./sysmon.nix
    ./cliphish.nix
    ./hyprland.nix
    ./packages.nix
    ./starship.nix
    ./wlsunset.nix
    ./qutebrowser.nix
  ];

  home = {
    username = "baldev";
    homeDirectory = "/home/baldev";
    stateVersion = "24.11";
  };
}
