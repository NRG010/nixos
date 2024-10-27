_: {
  imports = [
    ./theme.nix
    ./audio.nix
    ./baldev.nix
    ./nvidia.nix
    ./polkit.nix
    ./network.nix
    ./packages.nix
    ./bootloader.nix
    ./hardware-configuration.nix
  ];
  nix.settings.experimental-features = "nix-command flakes";
  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "Asia/Kolkata";
  system.stateVersion = "unstable";
}
