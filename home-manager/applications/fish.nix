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
      xs = "nh os switch";
      xc = "nh clean all -k 3";
      da = "ani-cli -d -e";
      dv = "yt-dlp";
    };
  };
}
