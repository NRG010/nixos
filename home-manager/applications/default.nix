{ pkgs, ... }: {

  imports = [
    ./mpv.nix
    ./git.nix
    ./yazi.nix
    ./neovim.nix
    ./sysmon.nix
    ./cliphish.nix
    ./gammastep.nix
    ./qutebrowser.nix

    ./fish.nix
    ./starship.nix

    ./kitty.nix
  ];

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
}
