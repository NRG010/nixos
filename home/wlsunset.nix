{
  services.wlsunset = {
    enable = true;
    sunset = "18:00";
    sunrise = "08:00";
    temperature = {
      day = 2000;
      night = 1800;
    };
    systemdTarget = "hyprland-session.target";
  };
}
