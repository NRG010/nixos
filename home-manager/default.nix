{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {

  imports = [
    ./applications
    ./hyprland
    ./neovim
  ];

  home = {
    username = "baldev";
    homeDirectory = "/home/baldev";
    stateVersion = "24.05";
  };

  programs = {
    home-manager.enable = true;
  };

  systemd.user.startServices = "sd-switch";
}
