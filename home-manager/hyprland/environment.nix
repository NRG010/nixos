_: {
  wayland.windowManager.hyprland.settings = {
    env = [
      "XDG_CURRENT_DESKTOP,Hyprland"
      "XDG_SESSION_TYPE,wayland"
      "XDG_SESSION_DESKTOP,Hyprland"
      "QT_QPA_PLATFORM,wayland"
      "QT_QPA_PLATFORMTHEME,qt6ct"
      "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
      "QT_AUTO_SCREEN_SCALE_FACTOR,1"
      "MOZ_ENABLE_WAYLAND,1"
      "GDK_SCALE,1"

      "LIBVA_DRIVER_NAME,nvidia"
      "XDG_SESSION_TYPE,wayland"
      "GBM_BACKEND,nvidia-drm"
      "DRI_PRIME,pci-0000_01_00_0"
      "__NV_PRIME_RENDER_OFFLOAD,1"
      "__VK_LAYER_NV_optimus,NVIDIA_only"
      "__GLX_VENDOR_LIBRARY_NAME,nvidia"
      "VK_ICD_FILENAMES,/usr/share/vulkan/icd.d/nvidia_icd.json"
    ];

    cursor = {
      no_hardware_cursors = true;
    };
  };
}
