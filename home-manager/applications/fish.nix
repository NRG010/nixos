_: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
    loginShellInit = ''
      if status is-login
        if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
          Hyprland
        end
      end
    '';
    shellAbbrs = {
      xc = "nh clean all -k 3";
      xs = "nh os switch";
      da = "ani-cli";
      dv = "yt-dlp";
    };
  };
}
