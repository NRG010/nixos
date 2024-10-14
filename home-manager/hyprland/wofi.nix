_: {
  programs.wofi = {
    enable = true;

    settings = {
      show = "drun";
      term = "kitty";
      image_size = 24;
      allow_images = true;
      sort_order = "default";
    };
  };
}
