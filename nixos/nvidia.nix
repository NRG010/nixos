{ config, ... }:

{
  hardware.graphics = {
    enable = true;
    driSupport32Bit = true;
  };

  services.xserver.videoDriver = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    nvidiaSettings = true;
    prime = {
      sync.enable = true;
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
    package = config.boot.kernelPackages.nvidiaPackages.production;
  };
}
