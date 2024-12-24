{
  programs.fish = {
    enable = true;
    preferAbbrs = true;
    generateCompletions = true;
    shellAbbrs = {
      nu = "nix flake update";
      nc = "nix-collect-garbage -d";
      nr = "sudo nixos-rebuild switch --flake ~/.nix-config/#nixos";
      gb = "git add -A;git commit -am '$(date +%d/%m/%y-%H:%m)';git push";
    };
    loginShellInit = "starship init fish | source";
  };
}
