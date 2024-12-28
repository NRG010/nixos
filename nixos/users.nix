{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.baldev = {
    extraGroups = [ "wheel" "input" "networkmanager" ];
    shell = pkgs.fish;
    isNormalUser = true;
    initialPassword = "coercion";
  };
}
