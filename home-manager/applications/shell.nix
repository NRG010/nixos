_: {
  programs = {
    fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting
      '';
      shellAbbrs = {
        xs = "nh os switch";
        xc = "nh clean all -k 3";
        # Download
        dv = "yt-dlp";
        da = "ani-cli -d -e";
        # Code
        nn = "nvim";
        ns = "sudo nvim";
      };
    };

    starship = {
      enable = true;
      enableTransience = true;
      enableFishIntegration = true;
      settings = { add_newline = false; };
    };
  };
}
