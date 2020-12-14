{ pkgs, ... }:
{
  environment.shellAliases = { v = "$EDITOR"; };

  environment.sessionVariables = {};

  environment.systemPackages = with pkgs; [
    clang
    file
    git-crypt
    gnupg
    less
    ncdu
    pass
    tig
    tokei
    wget
  ];

  fonts = {
    fonts = [ pkgs.dejavu_nerdfont ];
    fontconfig.defaultFonts.monospace = [ "DejaVu Sans Mono Nerd Font Complete Mono" ];
  };

  documentation.dev.enable = true;

  programs.thefuck.enable = true;
  programs.firejail.enable = true;
  programs.mtr.enable = true;
}