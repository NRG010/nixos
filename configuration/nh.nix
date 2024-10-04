{ config, pkgs, ... }: {

  environment = {
    sessionVariables = { FLAKE = "/home/baldev/nixos"; };
    systemPackages = with pkgs; [
      nix-output-monitor
      nvd
    ];
  };

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 1d --keep 3";
    flake = "/home/baldev/nixos";
  };
}
