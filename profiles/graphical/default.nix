{ pkgs, ... }:
let inherit (builtins) readFile;
in
{
  imports = [ ./sway ];

  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.pulseaudio.enable = true;

  boot = {

    kernelPackages = pkgs.linuxPackages_latest;

    tmpOnTmpfs = true;

    kernel.sysctl."kernel.sysrq" = 1;

  };

  environment = {

    etc = {
    };

    sessionVariables = {
    };

    systemPackages = with pkgs; [
      dzen2
      feh
      ffmpeg-full
      imagemagick
      imlib2
      librsvg
      manpages
      pulsemixer
      stdmanpages
      xsel
      zathura
    ];
  };

  services.xbanish.enable = true;

  services.xserver = {
    enable = true;

    libinput.enable = true;

    displayManager.sddm = {
      enable = true;
    };
  };
}
