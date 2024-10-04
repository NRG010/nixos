_: {
  programs.qutebrowser = {
    enable = true;
    loadAutoconfig = true;
    settings = {
      colors = { webpage = { darkmode.enabled = true; }; };
      auto_save.session = true;
      content = {
        blocking.enabled = true;
        blocking.method = "both";
      };
    };
  };
}
