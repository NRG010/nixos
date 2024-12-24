{ pkgs, ... }: 

{
  users.users.baldev = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "input"
      "networkmanager"
    ];
    initialPassword = "coercion";
  };
}
