{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ bluez ];

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    jack.enable = true;
    audio.enable = true;
    pulse.enable = true;
    alsa.support32Bit = true;
  };

  hardware.bluetooth = {
    enable = true;
    settings.General = {
      Experimental = true;
      Enable = "Source,Sink,Media,Socket";
    };
  };
}
