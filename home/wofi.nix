{
  programs.wofi = {
    enable = true;
    settings = {
      show = "drun";
      image_size = 24;
      allow_images = true;
      term = "alacritty -e";
      sort_order = "default";
    };
  };
}
