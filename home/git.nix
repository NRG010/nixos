{
  programs.git = {
    enable = true;
    userEmail = "personalemailofbaldev@gmail.com";
    userName = "Baldev Singh";
  };

  programs.gh = {
    enable = true;
    settings = {
      git_protocol = "https";
      prompt = "enabled";
    };
  };
}
