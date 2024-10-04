# █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █ █▄░█ █▀▀ █▀
# █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ █ █░▀█ █▄█ ▄█
_: {
  wayland.windowManager.hyprland = {
    settings = {
      # Assign apps
      "$mod" = "SUPER";
      "$term" = "kitty";
      "$editor" = "kitty nvim";
      "$file" = "kitty yazi";
      "$sysmon" = "kitty btop";
      "$browser" = "qutebrowser";
      "$menu" = "wofi";
      bind = [
        # Application shortcuts
        "$mod, R, exec, $menu"
        "$mod, T, exec, $term"
        "$mod, C, exec, $editor"
        "$mod, E, exec, $file"
        "$mod, F, exec, $browser"
        "$mod, Escape, exec, $sysmon"
        # Clipboard
        "SUPER, V, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"
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
  };
}
