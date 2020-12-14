{ config, lib, pkgs, ... }:

{
  ### root password is empty by default ###
  imports = [ ../users/nixos ../users/root ../users/kcw ];

  # Use the GRUB 2 boot loader.
  boot = {
    loader = {
      timeout = 4;
      grub = {
        enable = true;
        version = 2;
        device = "/dev/sda";
        configurationLimit = 27;
      #  trustedBoot = {
      #    enable = true;
      #    systemHasTPM = "YES_TPM_is_activated";
      #  };
      };
    };
    kernelPackages = pkgs.linuxPackages_latest;
  #  vesa = true;
  };

  fileSystems."/" = { device = "/dev/disk/by-label/nixos"; };
}
