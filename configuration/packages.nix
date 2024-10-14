{ lib, pkgs, ... }: {

  environment = {
    sessionVariables = { FLAKE = "/etc/nixos"; };
    systemPackages = with pkgs; [
      gcc
      libgcc

      python3

      rustup
      rust-analyzer

      vim

      nix-output-monitor
      nvd

      widevine-cdm
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
    clean.enable = true;
    clean.extraArgs = "--keep-since 1d --keep 3";
  };
}
