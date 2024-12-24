{
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
    };
  };

  boot.kernelParams = [
    "i8042.nokbd"
    "ipv6.disable=1"
    "nvidia_drm.fbdev=1"
    "nvidia_drm.modeset=1"
  ];
}
