{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    widevine-cdm
    youtube-music
  ];

  nixpkgs.config.allowUnfree = true;

  nixpkgs.overlays = [
    (final: prev: {
      qutebrowser = prev.qutebrowser.override { enableWideVine = true; };
    })
  ];
}
