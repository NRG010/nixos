_: {
  programs.kitty = {
    enable = true;
    keybindings = {
      "ctrl+c" = "copy_or_interrupt";
      "ctrl+v" = "paste_or_interrupt";
    };
    settings = {
      url_style = "curly";
      scrollback_lines = 10000;
      initial_window_width = 1200;
      initial_window_height = 600;
      update_check_interval = 0;
      enable_audio_bell = false;
      cursor_shape = "Underline";
      window_padding_width = 5;
    };
    shellIntegration.enableFishIntegration = true;
  };
}
