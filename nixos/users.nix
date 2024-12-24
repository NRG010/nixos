{ pkgs, ... }: 

{
  programs.fish.enable = true;
  users.users.baldev = {
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "input"
      "networkmanager"
    ];
    initialPassword = "coercion";
  };
}
