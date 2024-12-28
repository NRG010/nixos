{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zip
    unzip
    p7zip

    curl
    wget
    ani-cli

    poppler
    ueberzugpp
    imagemagick
    ffmpegthumbnailer
  ];

  programs = {
    jq.enable = true;
    fd.enable = true;
    imv.enable = true;
    bat.enable = true;
    btop.enable = true;
    ripgrep.enable = true;
    zathura.enable = true;
    fastfetch.enable = true;
  };

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.lsd = {
    enable = true;
    enableAliases = true;
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.tealdeer = {
    enable = true;
    settings.updates.auto_update = true;
  };

  services.dunst.enable = true;
}
