let
  date = $(date +%d/%m/%y-%H:%m);
in
{
  programs.fish = {
    enable = true;
    preferAbbrs = true;
    generateCompletions = true;
    shellAbbrs = {
      nu = "nix flake update";
      nc = "nix-collect-garbage -d";
      nr = "sudo nixos-rebuild switch --flake ~/.nix-config/#nixos";
      gb = "git add -A;git commit -am "$date";git push";
    };
    loginShellInit = ''
      if status is-login
        if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
          Hyprland
        end
      end
      starship init fish | source
    '';
  };
}
