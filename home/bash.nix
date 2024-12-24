_:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      nu = "nix flake update";
      nr = "sudo nixos-rebuild switch --flake ~/.nix-config/#nixos";
      gb = "git add -A; git commit -am $(date +%d/%m/%y-%H:%m); git push";
    };
  };
}
