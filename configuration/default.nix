_: {
  imports = [
    ./hardware-configuration.nix

    ./packages.nix

    ./bootloader.nix
    ./baldev.nix
    ./polkit.nix

    ./theme.nix

    ./audio.nix
    ./nvidia.nix
    ./network.nix
  ];

  nix = {
    settings = {

      experimental-features = "nix-command flakes";

      substituters = [ "https://hyprland.cachix.org" ];
      trusted-public-keys = [
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      ];
    };
  };

  time.timeZone = "Asia/Kolkata";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "24.05";
}
