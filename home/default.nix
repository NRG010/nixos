{
  imports = [
    ./git.nix
    ./mpv.nix
    ./fish.nix
    ./wofi.nix
    ./yazi.nix
    ./cliphish.nix
    ./hyprland.nix
    ./packages.nix
    ./starship.nix
    ./wlsunset.nix
    ./alacritty.nix
    ./qutebrowser.nix
  ];

  home = {
    username = "baldev";
    homeDirectory = "/home/baldev";
    stateVersion = "24.11";
  };
}
