_: {

  programs.qutebrowser = {
    enable = true;

    keyBindings = {
      normal = {
        ",y" = "spawn mpv {url}";
        ",Y" = "hint links spawn mpv {hint-url}";
        ",l" = "spawn librewolf {url}";
        ",L" = "hint links spawn librewolf {hint-url}";
      };

    };

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
        widgets =
          [ "keypress" "search_match" "history" "scroll" "tabs" ];
      };

    };

  };

}
