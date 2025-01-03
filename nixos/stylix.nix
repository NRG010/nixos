{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ base16-schemes ];

  stylix = {
    enable = true;
    autoEnable = true;
    polarity = "dark";
    image = ./wallpapers/castlevania.jpg;
    imageScalingMode = "fill";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
  };

  stylix.cursor = {
    size = 20;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
  };

  stylix.fonts = {
    serif = {
      package = pkgs.noto-fonts;
      name = "Noto Serif";
    };
    sansSerif = {
      package = pkgs.noto-fonts;
      name = "Noto Sans";
    };
    monospace = {
      package = pkgs.nerdfonts.override { fonts = [ "CascadiaCode" ]; };
      name = "CaskaydiaCove Nerd Font Mono";
    };
    emoji = {
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };
  };

  stylix.fonts.sizes = {
    applications = 11;
    desktop = 11;
    popups = 9;
    terminal = 12;
  };

  stylix.opacity = {
    applications = 1.0;
    desktop = 1.0;
    popups = 0.9;
    terminal = 0.9;
  };
}
