{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    bluez
  ];
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    audio.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
  hardware.bluetooth = {
    enable = true;
    settings = {
      AutoEnable = true;
      ControllerMode = "bredr";
      General = {
	Experimental = true;
        Enable = "Source,Sink,Media,Socket";
      };
    };
  };
  systemd.user.services.mpris-proxy = {
      description = "Mpris proxy";
      after = [ "network.target" "sound.target" ];
      wantedBy = [ "default.target" ];
      serviceConfig.ExecStart = "${pkgs.bluez}/bin/mpris-proxy";
  };
}
