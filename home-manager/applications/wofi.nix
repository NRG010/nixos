_: {
  programs.wofi = {
    enable = true;
    settings = {
      hide_scroll = true;
      show = "drun";
      width = "40%";
      lines = 8;
      line_wrap = "word";
      term = "kitty";
      allow_markup = true;
      always_parse_args = false;
      show_all = true;
      print_command = true;
      allow_images = true;
      gtk_dark = true;
      image_size = 20;
      display_generic = false;
      location = "center";
      key_expand = "Tab";
      insensitive = false;
    };
  };
}
