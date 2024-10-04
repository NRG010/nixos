_: {
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
    settings = {
      window_padding_width = 5;
      scrollback_lines = 10000;
    };
    keybindings = { "ctrl+c" = "copy_or_interrupt"; };
  };
}
