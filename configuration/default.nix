_: {
  imports = [
    ./hardware-configuration.nix

    ./packages.nix

    ./bootloader.nix
    ./baldev.nix
    ./polkit.nix

    ./audio.nix
    ./nvidia.nix
    ./network.nix

    ./theme.nix
  ];


  nix.settings.experimental-features = "nix-command flakes";

  time.timeZone = "Asia/Kolkata";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "unstable";
}
