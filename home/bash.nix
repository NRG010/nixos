_:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      rn = "sudo nixos-rebuild switch --flake /home/baldev/nix/#nixos";
    };
  };
}
