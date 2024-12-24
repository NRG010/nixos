let
  date = "";
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
