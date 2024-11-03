{ lib, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vscode
    obsidian
    widevine-cdm
    nix-output-monitor
  ];
  nixpkgs.config.allowUnfreePredicate = pkg:
  builtins.elem (lib.getName pkg) [
    "vscode"
    "obsidian"
    "widevine-cdm"
  ];
  nixpkgs.overlays = [
  (final: prev: { qutebrowser = prev.qutebrowser.override { enableWideVine = true; }; })
  ];
  programs.nh = {
    enable = true;
    clean.enable = true;
  }
  environment.sessionVariables.FLAKE = "/etc/nixos";
}
