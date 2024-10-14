# █░█░█ █ █▄░█ █▀▄ █▀█ █░█░█   █▀█ █░█ █░░ █▀▀ █▀
# ▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀   █▀▄ █▄█ █▄▄ ██▄ ▄█
_: {
  wayland.windowManager.hyprland.settings = {

    windowrulev2 = [
      "float,class:^(qutebrowser)$,title:^(Picture-in-Picture)$"
      "float,class:^(qutebrowser)$,title:^(Library)$"
      "float,class:^(qt5ct)$"
      "float,class:^(qt6ct)$"
    ];

    workspace = [
      "10, border:false, rounding:false"
    ];
    
  };
}
