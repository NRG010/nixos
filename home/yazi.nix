_:

{
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.yazi.settings.log.enabled = false;

  programs.yazi.settings.manager = {
    ratio = [ 0 5 3 ];
    show_hidden = false;
    sort_dir_first = true;
    sort_reverse = false;
    show_symlink = false;
  };

  programs.yazi.settings.opener = {
    edit = [{
      run = ''nvim "$@"'';
      block = true;
    }];
    imv = [{
      run = ''imv "$@"'';
      orphan = true;
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

  programs.yazi.settings.open.prepend_rules = [
    {
      name = "*.png";
      use = "imv";
    }
    {
      name = "*.jpg";
      use = "imv";
    }
    {
      name = "*.gif";
      use = "mpv";
    }
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
}
