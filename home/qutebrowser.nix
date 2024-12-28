{
  programs.qutebrowser = {
    enable = true;
    loadAutoconfig = true;
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
        widgets = [ "keypress" "search_match" "scroll" "tabs" "progress" ];
      };
    };
    keyBindings.normal = {
      ",y" = "spawn mpv {url}";
      ",Y" = "hint links spawn mpv {hint-url}";
      ",d" = "hint links spawn alacritty -e yt-dlp {url}";
      ",D" = "hint links spawn alacritty -e yt-dlp {hint-url}";
    };
  };
}
