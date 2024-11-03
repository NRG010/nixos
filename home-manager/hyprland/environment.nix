{pkgs, ...}: {
  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    GTK_USE_PORTAL = "1";
    WLR_RENDERER = "vulkan";
    MOZ_ENABLE_WAYLAND = "1";
    GBM_BACKEND = "nvidia-drm";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    LIBVA_DRIVER_NAME = "nvidia";
    XDG_SESSION_TYPE = "wayland";
    WLR_NO_HARDWARE_CURSORS = "1";
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_DESKTOP = "Hyprland";
    NIXOS_XDG_OPEN_USE_PORTAL = "1";
    _JAVA_AWT_WM_NONREPARENTING = "1";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  }; 
}
