_:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      rn = "sudo nixos-rebuild switch --flake /home/baldev/nix/#nixos";
      gb = "git add -A; git commit -am '$(date +%d/%m/%y\\ %H:%m)'; git push"
    };
  };
}
