{
  users.users.kcw = {
    uid = 1001;
    password = "nixos";
    description = "KCW User Account";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" ];
  };
}
