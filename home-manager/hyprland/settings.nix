# █▀▀ █▄░█ █░█
# ██▄ █░▀█ ▀▄▀
_: {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      variables = [ "--all" ];
      enableXdgAutostart = true;
    };
    xwayland.enable = true;
  };
}
