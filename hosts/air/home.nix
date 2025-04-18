{ self, lib, pkgs, env, ... }:
{
  imports = [
    ../defaultHome.nix
    ../../modules/org
  ];

  home.sessionVariables = {
    XDG_CONFIG_HOME = "${env.userSettings.air.home.path}.config";
  };

  programs.zsh = {
    shellAliases = {
      python = "/usr/bin/python3";
      pip = "/usr/bin/pip";
      update = "darwin-rebuild switch --flake ${env.userSettings.air.home.path}/.config/nix#air";
      nvim-test-config = "NVIM_APPNAME=nvim-config nvim";
    };
  };
}
