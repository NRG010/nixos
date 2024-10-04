{ pkgs, ... }: {
  imports = [
    ./mpv.nix
    ./git.nix
    ./wofi.nix
    ./file.nix
    ./shell.nix
    ./sysmon.nix
    ./cliphish.nix
    ./terminal.nix
    ./gammastep.nix
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

    wl-clipboard 
  ];
}
