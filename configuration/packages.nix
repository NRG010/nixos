{ lib, pkgs, ... }: {
  environment = {
    sessionVariables = { FLAKE = "/etc/nixos"; };
    systemPackages = with pkgs; [
      vim
      nvd
      widevine-cdm
      nix-output-monitor
    ];
  };
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "widevine-cdm"
    ];
  nixpkgs.overlays = [
    (final: prev: { qutebrowser = prev.qutebrowser.override { enableWideVine = true; }; })
  ];
  programs.nh = {
    enable = true;
  };
}
