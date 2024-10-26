{ pkgs, ... }: {

  imports = [
    ./mpv.nix
    ./git.nix
    ./yazi.nix
    ./fish.nix
    ./kitty.nix
    ./sysmon.nix
    ./neovim.nix
    ./cliphish.nix
    ./starship.nix
    ./qutebrowser.nix
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
