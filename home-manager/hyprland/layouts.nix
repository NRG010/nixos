# █░░ ▄▀█ █▄█ █▀█ █░█ ▀█▀ █▀
# █▄▄ █▀█ ░█░ █▄█ █▄█ ░█░ ▄█
_: {
  wayland.windowManager.hyprland = {
    settings = {
      dwindle = {
        pseudotile = "yes";
        preserve_split = "yes";
      };
      master = { new_status = "master"; };
      general = {
        gaps_in = 4;
        gaps_out = 8;
        border_size = 0;
        layout = "dwindle";
        resize_on_border = true;
      };
      decoration = {
        rounding = 8;
        drop_shadow = false;
      };
      decoration.blur = {
        enabled = "yes";
        size = 6;
        passes = 3;
        special = true;
        new_optimizations = "yes";
        ignore_opacity = "on";
        xray = false;
      };
    };
  };
}
