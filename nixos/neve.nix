{config, ...}:

{
  programs.Neve = {
    enable = true;
    #imports = [ inputs.Neve.nixvimModule ];
    #colorschemes.catppuccin.enable = lib.mkForce false;
  };
}
