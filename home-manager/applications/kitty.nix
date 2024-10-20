_: {
  programs.kitty = {
    enable = true;
    keybindings = {
      "ctrl+c" = "copy_or_interrupt";
      "ctrl+v" = "paste_or_interrupt";
    };
    settings = {
      url_style = "curly";
      enable_audio_bell = "no";
      cursor_shape = "Underline";
      window_padding_width = 5;
    };
    shellIntegration.enableFishIntegration = true;
  };
}
