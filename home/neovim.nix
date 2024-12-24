#{config, pkgs, ...}:

#{
#  programs.neovim = {
#    enable = true;
#    viAlias = true;
#    vimAlias = true;
#    vimdiffAlias = true;
#    defaultEditor = true;
#  };
#}

{ inputs, config, pkgs, ... }: {
  imports = [
    inputs.nvchad4nix.homeManagerModule
  ];
  programs.nvchad.enable = true;
}
