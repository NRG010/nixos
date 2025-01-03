{ lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    widevine-cdm
    youtube-music
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [ "widevine-cdm" ];

  nixpkgs.overlays = [
    (final: prev: {
      qutebrowser = prev.qutebrowser.override { enableWideVine = true; };
    })
  ];
}
