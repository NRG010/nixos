_:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      rh = "home-manager switch --flake /home/baldev/nix/#baldev";
      rn = "sudo nixos-rebuild switch --flake /home/baldev/nix/#nixos";
    };
  };
}
