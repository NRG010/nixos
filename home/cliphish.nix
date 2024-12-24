_:

{
  services.cliphist = {
    enable = true;
    allowImages = true;
    systemdTarget = "hyprland-session.target";
    extraOptions = [ "-max-dedupe-search" "10" "-max-items" "500" ];
  };
}
