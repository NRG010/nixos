{ config, lib, pkgs, ... }:

{
  imports = [ 
    ./grub.nix
    ./audio.nix
    ./users.nix
    ./nvidia.nix
    ./stylix.nix
    ./network.nix
    ./packages.nix
    ./hardware-configuration.nix
  ];

  time.timeZone = "Asia/Kolkata";

  i18n.defaultLocale = "en_US.UTF-8";

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 3d";
  };
  
  nix.settings.experimental-features = [
    "flakes"
    "nix-command"
  ];

  system.stateVersion = "24.11";
}

