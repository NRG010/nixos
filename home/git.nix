{
  programs.git = {
    enable = true;
    userName = "Baldev Singh";
    userEmail = "personalemailofbaldev@gmail.com";
  };

  programs.gh = {
    enable = true;
    settings = {
      prompt = "enabled";
      git_protocol = "https";
    };
  };
}
