{ lib, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    obsidian
    widevine-cdm
    nix-output-monitor
    networkmanagerapplet
    networkmanager-openvpn
  ];
  nixpkgs.config.allowUnfreePredicate = pkg:
  builtins.elem (lib.getName pkg) [
    "obsidian"
    "widevine-cdm"
  ];
  nixpkgs.overlays = [
    (final: prev: { qutebrowser = prev.qutebrowser.override { enableWideVine = true; }; })
  ];
  programs.nh.enable = true;
  environment.sessionVariables.FLAKE = "/etc/nixos";
}
