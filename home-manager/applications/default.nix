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

  programs = {
    jq.enable = true;
    fd.enable = true;
    ripgrep.enable = true;
    zathura.enable = true;
  };

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
