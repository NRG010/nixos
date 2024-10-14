{ input, pkgs, ... }: {

  environment.systemPackages = with pkgs; [ base16-schemes ];

  stylix = {
    enable = true;
    autoEnable = true;
    polarity = "dark";
    image = ./wallpapers/01.jpg;
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
      package = pkgs.dejavu_fonts;
      name = "DejaVu Serif";
    };
    sansSerif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans";
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
    popups = 10;
    terminal = 12;
  };

  stylix.opacity = {
    applications = 0.9;
    desktop = 0.8;
    popups = 0.8;
    terminal = 0.8;
  };
}
