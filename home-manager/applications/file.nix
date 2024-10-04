_: {
  programs = {
    jq = { enable = true; };

    fd = { enable = true; };

    ripgrep = { enable = true; };

    fzf = {
      enable = true;
      enableFishIntegration = true;
    };

    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };

    zathura = { enable = true; };

    yazi = {
      enable = true;
      enableFishIntegration = true;
    };
  };

  programs.yazi.settings = {
    log = { enabled = false; };
    manager = {
      ratio = [ 0 5 3 ];
      show_hidden = false;
      sort_dir_first = true;
      sort_reverse = false;
    };
    opener = {
      edit = [{
        run = ''nvim "$@"'';
        block = true;
      }];
      play = [{
        run = ''mpv "$@"'';
        orphan = true;
      }];
      zathura = [{
        run = ''zathura "$@"'';
        orphan = true;
      }];
    };
    open.prepend_rules = [
      {
        name = "*.cbz";
        use = "zathura";
      }
      {
        name = "*.pdf";
        use = "zathura";
      }
      {
        name = "*.epub";
        use = "zathura";
      }
    ];
  };
}
