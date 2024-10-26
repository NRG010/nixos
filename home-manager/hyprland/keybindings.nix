# █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █ █▄░█ █▀▀ █▀
# █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ █ █░▀█ █▄█ ▄█
{ pkgs, ... }: {
  wayland.windowManager.hyprland.settings = {

    "$mod" = "SUPER";
    "$shiftMod" = "SUPER+SHIFT";

    # Assign apps
    "$term" = "kitty";
    "$file" = "$term yazi";
    "$sysmon" = "$term btop";
    "$editor" = "$term nvim";
    "$browser" = "qutebrowser";

    "$menu" = "wofi -I";
    "$emoji" = "{pkgs.wofi-emoji}/bin/wofi-emoji";

    bind = [
      # Application shortcuts
      "$mod, Q, killactive,"
      "$mod, R, exec, $menu"
      "$mod, E, exec, $file"
      "$mod, T, exec, $term"
      "$mod, C, exec, $editor"
      "$mod, F, exec, $browser"
      "$mod, Escape, exec, $sysmon"

      "$shiftMod, R, exec, $emoji"
      "$mod, V, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"

      # Move/Change window focus
      "$mod, H, movefocus, l"
      "$mod, L, movefocus, r"
      "$mod, K, movefocus, u"
      "$mod, J, movefocus, d"
      "Alt, Tab, movefocus, d"

      # Move/Switch to special workspace (scratchpad)
      "$mod+Alt, S, movetoworkspacesilent, special"
      "$mod, S, togglespecialworkspace"
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
