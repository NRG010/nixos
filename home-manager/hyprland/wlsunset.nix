_: {
  services.wlsunset = {
    enable = true;
    temperature = {
      day = 2000;
      night = 1800;
    };
    sunset = "18:00";
    sunrise = "08:00";
    systemdTarget = "hyprland-session.target";   
  };
}
