{ config, pkgs, ... }:

{
  imports = [
    ./mpv.nix
    ./git.nix
    ./bash.nix
    ./yazi.nix
    ./wofi.nix
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
