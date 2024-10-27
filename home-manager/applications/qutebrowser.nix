_: {
  programs.qutebrowser = {
    enable = true;
    settings = {
      colors.webpage.darkmode.enabled = true;
      auto_save.session = true;
      content.blocking = {
        enabled = true;
        method = "both";
      };
      tabs = {
        position = "bottom";
        show = "switching";
      };
      scrolling.bar = "when-searching";
      statusbar = {
        widgets = [
          "keypress"
          "search_match"
          "history"
          "scroll"
          "tabs"
        ];
      };
    };
  };

  programs.qutebrowser.keyBindings.normal = {
  # Mpv
    ",y" = "spawn mpv {url}";
    ",Y" = "hint links spawn mpv {hint-url}";
  # yt-dlp
    ",d" = "hint links spawn kitty yt-dlp -f \"bv*[height<=720]+ba/b[height<=720] / wv*+ba/w\" {url}";
    ",D" = "hint links spawn kitty yt-dlp -f \"bv*[height<=720]+ba/b[height<=720] / wv*+ba/w\" {hint-url}";
  };
}
