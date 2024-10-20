{ pkgs, ... }: {

  imports = [
    ./wofi.nix
    ./layouts.nix
    ./settings.nix
    ./animations.nix
    ./environment.nix
    ./keybindings.nix
    ./windowrules.nix
  ];

  home.packages = with pkgs; [
    gtk3
    gtk4

    qt5ct
    qt6ct
    qt5.qtwayland
    qt6.qtwayland

    wofi-emoji
    wl-clipboard

    brightnessctl
  ];

  wayland.windowManager.hyprland.settings = {

    exec-once = [
      "$(pkgs.brightnessctl)/bin/brightnessctl s 500"
    ];

    monitor = "eDP-1, 1366x768@60, 0x0, 1";

    input = {
      kb_layout = "us";
      follow_mouse = 1;
      sensitivity = 0;
      force_no_accel = 1;
      numlock_by_default = true;
    };

    device = {
      name = "epic mouse V1";
      sensitivity = -0.5;
    };

    misc = {
      vrr = 0;
      disable_hyprland_logo = true;
      disable_splash_rendering = true;
      force_default_wallpaper = 0;
    };

    xwayland = { force_zero_scaling = true; };
  };
}
