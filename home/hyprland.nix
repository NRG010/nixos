{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pamixer
    wofi-emoji
    brightnessctl
    qt5.qtwayland
    qt6.qtwayland
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      variables = [ "--all" ];
      enableXdgAutostart = true;
    };
    xwayland.enable = true;
  };

  wayland.windowManager.hyprland.settings = {
    monitor = ",1366x768@60,auto,1";
    exec-once = [ "dbus-update-activation-environment --systemd --all" ];
    input = {
      sensitivity = 0;
      kb_layout = "us";
      follow_mouse = 1;
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
    xwayland.force_zero_scaling = true;
    animations = {
      enabled = "yes";
      bezier = [
        "wind, 0.05, 0.9, 0.1, 1.05"
        "winIn, 0.1, 1.1, 0.1, 1.1"
        "winOut, 0.3, -0.3, 0, 1"
        "liner, 1, 1, 1, 1"
      ];
      animation = [
        "windows, 1, 6, wind, slide"
        "windowsIn, 1, 6, winIn, slide"
        "windowsOut, 1, 5, winOut, slide"
        "windowsMove, 1, 5, wind, slide"
        "border, 1, 1, liner"
        "borderangle, 1, 30, liner, loop"
        "fade, 1, 10, default"
        "workspaces, 1, 5, wind"
      ];
    };
    env = [
      "NIXOS_OZONE_WL,1"
      "GTK_USE_PORTAL,1"
      "WLR_RENDERER,vulkan"
      "MOZ_ENABLE_WAYLAND,1"
      "GBM_BACKEND,nvidia-drm"
      "SDL_VIDEODRIVER,wayland"
      "CLUTTER_BACKEND,wayland"
      "LIBVA_DRIVER_NAME,nvidia"
      "XDG_SESSION_TYPE,wayland"
      "WLR_NO_HARDWARE_CURSORS,1"
      "XDG_CURRENT_DESKTOP,Hyprland"
      "XDG_SESSION_DESKTOP,Hyprland"
      "NIXOS_XDG_OPEN_USE_PORTAL,1"
      "_JAVA_AWT_WM_NONREPARENTING,1"
      "__GLX_VENDOR_LIBRARY_NAME,nvidia"
    ];
    dwindle = {
      pseudotile = true;
      preserve_split = true;
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
      blur = {
        vibrancy = 0.1696;
        enabled = true;
        passes = 1;
        size = 3;
      };
      rounding = 8;
    };

    "$mod" = "Super";
    "$shiftMod" = "Super+Shift";
    # Assign apps
    "$menu" = "wofi -I";
    "$term" = "alacritty";
    "$browser" = "qutebrowser";
    "$file" = "$term -e yazi";
    "$sysmon" = "$term -e btop";
    "$editor" = "$term -e nvim";
    "$emoji" = "${pkgs.wofi-emoji}/bin/wofi-emoji";
    "$clip" = "cliphist list | wofi --dmenu | cliphist decode | wl-copy";
    bind = [
      # Application shortcuts
      "$mod, Q, killactive,"
      "$mod, R, exec, $menu"
      "$mod, E, exec, $file"
      "$mod, V, exec, $clip"
      "$mod, T, exec, $term"
      "$mod, C, exec, $editor"
      "$mod, F, exec, $browser"
      "$shiftMod, R, exec, $emoji"
      "$mod, Escape, exec, $sysmon"
      # Volume and media control
      ", F1, exec, pamixer -t"
      ", F2, exec, pamixer -d 5"
      ", F3, exec, pamixer -i 5"
      # Move/Change window focus
      "$mod, H, movefocus, l"
      "$mod, L, movefocus, r"
      "$mod, K, movefocus, u"
      "$mod, J, movefocus, d"
      # Scratchpad
      "$mod, S, togglespecialworkspace"
      "$shiftMod, S, movetoworkspacesilent, special"
    ]
    # workspaces
      ++ (builtins.concatLists (builtins.genList (i:
        let ws = i + 1;
        in [
          "$mod, code:1${toString i}, workspace, ${toString ws}"
          "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
        ]) 9));
    # mouse movements
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
      "$mod ALT, mouse:272, resizewindow"
    ];
  };
}
