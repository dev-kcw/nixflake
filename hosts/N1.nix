{
  ### root password is empty by default ###
  imports = [ ../users/nixos ../users/root ];

  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        device = "/dev/nvme0n1";
        configurationLimit = 27;
     #  configurationName = "N1 Nixos w/ Flakes";
       #trustedBoot = {
         #enable = true;
         #systemHasTPM = "YES_TPM_is_activated";
       #};
        #useOSProber = true;
      };
    };
  };

  networking.networkmanager.enable = true;

  fileSystems."/" = {
  #  device = "/dev/disk/by-label/nixos";
  #  device = "/dev/nvme0n1p1";
    device = "/dev/disk/by-uuid/661e424e-6349-463c-b719-64866fe6d449";
    fsType = "ext4";
  };
}
