{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      gb = "git add -A; git commit -am $(date +%d/%m/%y-%H:%m); git push";
      nr = "sudo nixos-rebuild switch --flake /etc/nixos/#nixos";
    };
    loginShellInit = ''
      if status is-login
        if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
          Hyprland
        end
      end
    '';
    preferAbbrs = true;
    generateCompletions = true;
  };
}

