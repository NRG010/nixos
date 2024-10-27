# █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █ █▄░█ █▀▀ █▀
# █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ █ █░▀█ █▄█ ▄█
{ pkgs, ... }: {
  wayland.windowManager.hyprland.settings = {
    "$mod" = "Super";
    "$shiftMod" = "Super+Shift";
    # Assign apps
    "$term" = "kitty";
    "$menu" = "wofi -I";
    "$note" = "obsidian";
    "$file" = "$term yazi";
    "$sysmon" = "$term btop";
    "$editor" = "$term nvim";
    "$browser" = "qutebrowser";
    "$emoji" = "${pkgs.wofi-emoji}/bin/wofi-emoji";
    "$clip" = "cliphist list | wofi --dmenu | cliphist decode | wl-copy";
    bind = [
      # Application shortcuts
      "$mod, Q, killactive,"
      "$mod, R, exec, $menu"
      "$mod, N, exec, $note"
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
