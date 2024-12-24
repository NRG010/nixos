{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    historyIgnore = [
      "yy"
      "nu"
      "nr"
      "gb"
    ];
    shellAliases = {
      nu = "nix flake update";
      nc = "nix-collect-garbage -d";
      nr = "sudo nixos-rebuild switch --flake ~/.nix-config/#nixos";
      gb = "git add -A;git commit -am $(date +%d/%m/%y-%H:%m);git push";
    };
  };
}
