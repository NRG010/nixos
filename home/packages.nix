{ pkgs, ... }: 

{
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

  services.dunst.enable = true;
}
