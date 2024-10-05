{ pkgs, ... }:
let
  startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
    $(pkgs.brightnesscli)/bin/brightnesscli s 500 &
  '';
in {

  imports = [
    ./animations.nix
    ./keybindings.nix
    ./layouts.nix
    ./settings.nix

    ./wofi.nix
  ];

  home.packages = with pkgs; [
    qt5.qtwayland
    qt6.qtwayland
    qt5ct
    qt6ct

    wofi-emoji
    wl-clipboard
    brightnessctl
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = "$(startupScript)/bin/start";

      # █▀▄▀█ █▀█ █▄░█ █ ▀█▀ █▀█ █▀█
      # █░▀░█ █▄█ █░▀█ █ ░█░ █▄█ █▀▄
      monitor = "eDP-1, 1366x768@60, 0x0, 1";

      # █ █▄░█ █▀█ █░█ ▀█▀
      # █ █░▀█ █▀▀ █▄█ ░█░
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

      # █▀▄▀█ █ █▀ █▀▀
      # █░▀░█ █ ▄█ █▄▄
      misc = {
        vrr = 0;
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        force_default_wallpaper = 0;
      };
      xwayland = { force_zero_scaling = true; };

      # █░█░█ █ █▄░█ █▀▄ █▀█ █░█░█   █▀█ █░█ █░░ █▀▀ █▀
      # ▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀   █▀▄ █▄█ █▄▄ ██▄ ▄█
      windowrulev2 = [ "fullscreen,class:^(mpv)$" ];

      # █░░ ▄▀█ █▄█ █▀▀ █▀█   █▀█ █░█ █░░ █▀▀ █▀
      # █▄▄ █▀█ ░█░ ██▄ █▀▄   █▀▄ █▄█ █▄▄ ██▄ ▄█
      layerrule = [ "blur,wofi" "blur,kitty" "ignorezero,rofi" ];
    };
  };
}
