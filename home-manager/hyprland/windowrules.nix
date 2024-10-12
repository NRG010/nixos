# █░█░█ █ █▄░█ █▀▄ █▀█ █░█░█   █▀█ █░█ █░░ █▀▀ █▀
# ▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀   █▀▄ █▄█ █▄▄ ██▄ ▄█
_: {
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "opacity 0.80 0.80,class:^(kitty)$"
      "opacity 0.90 0.90,class:^(qutebrowser)$"
      "float,class:^(qutebrowser)$,title:^(Picture-in-Picture)$"
      "float,class:^(qutebrowser)$,title:^(Library)$"
      "float,class:^(qt5ct)$"
      "float,class:^(qt6ct)$"

      "fullscreen,class:^steam_app\d+$"
      "monitor 1,class:^steam_app_\d+$"
      "workspace 10,class:^steam_app_\d+$"
    ];
    workspace = [
      "10, border:false, rounding:false"
    ];

# █░░ ▄▀█ █▄█ █▀▀ █▀█   █▀█ █░█ █░░ █▀▀ █▀
# █▄▄ █▀█ ░█░ ██▄ █▀▄   █▀▄ █▄█ █▄▄ ██▄ ▄█
    layerrule = [
      "blur,wofi"
      "ignorezero,wofi"
    ];
  };
}
