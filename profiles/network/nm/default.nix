{ lib, ... }:
{
  networking.networkmanager = {
    enable = true;
    wifi.backend = "iwd";
    dns = lib.mkForce "none";
    extraConfig = ''
      [main]
      systemd-resolved=false
    '';
  };

  # networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];

  networking.wireless.iwd.enable = true;

  services.resolved = {
    enable = true;
    dnssec = "true";
    extraConfig = ''
      DNSOverTLS=yes
    '';
  };
}