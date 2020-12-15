{
  imports = [
    ../../profiles/dev
    ../../profiles/laptop
    ../../profiles/network
    ../../profiles/sec
    ../../profiles/visual
  ];

  home-manager.users.kcw = {
    imports = [
      ../profiles/alacritty
      ../profiles/direnv
      ../profiles/git
    ];
  };
  
  users.users.kcw = {
    uid = 1001;
    password = "nixos";
    description = "KCW User Account";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" ];
  };
}
