{ config, pkgs, ... }:

{
  imports = [
    ./mpv.nix
    ./git.nix
    ./bash.nix
    ./yazi.nix
    ./wofi.nix
    ./kitty.nix
    ./neovim.nix
    ./sysmon.nix
    ./waybar.nix
    ./cliphish.nix
    ./starship.nix
    ./wlsunset.nix
    ./hyprland.nix
    ./qutebrowser.nix
  ];

  home = {
    username = "baldev";
    homeDirectory = "/home/baldev";
    stateVersion = "24.11";
  };

  home.packages = with pkgs; [
    zip
    unzip
    p7zip

    curl
    gnugrep
    gnused
    ani-cli

    poppler
    imagemagick
    ffmpegthumbnailer
  ];

  programs = {
    jq.enable = true;
    fd.enable = true;
    imv.enable = true;
    dunst.enable = true;
    ripgrep.enable = true;
    zathura.enable = true;
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
  };
}
