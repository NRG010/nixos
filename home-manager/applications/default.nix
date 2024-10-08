{ pkgs, ... }: {
  imports = [
    ./mpv.nix
    ./git.nix
    ./file.nix
    ./shell.nix
    ./sysmon.nix
    ./terminal.nix
    ./cliphish.nix
    ./gammastep.nix
    ./qutebrowser.nix
    ./neovim.nix
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
