{
  imports = [ ../../profiles/graphical ];

  home-manager = {
    useGlobalPkgs = true;
    users.kcw = {
      imports = [];
    };
  };

  users.users.kcw = {
    uid = 1000;
    password = "nixos";
    description = "KCW User Account";
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "networkmanager" "video" ];
  };
}
