{ lib, pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    obsidian
    polkit_gnome
    widevine-cdm
    nix-output-monitor
    networkmanagerapplet
    networkmanager-openvpn
    gsettings-desktop-schemas
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:

  builtins.elem (lib.getName pkg) [
    "obsidian"
    "widevine-cdm"
  ];

  nixpkgs.overlays = [
    (final: prev: { qutebrowser = prev.qutebrowser.override { enableWideVine = true; }; })
  ];

  # XDG Portals
  xdg = {
    autostart.enable = true;
    portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-hyprland
      ];
    };
  };

  programs.nh.enable = true;

  environment.sessionVariables.FLAKE = "/etc/nixos";
}
