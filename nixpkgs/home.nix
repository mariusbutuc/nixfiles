{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "marius";
  home.homeDirectory = "/Users/marius";

  # Packages to install
  home.packages = with pkgs; [
    bat
    direnv
  ];

  # Raw configuration files
  home.file = {
    direnv = {
      executable = false;
      source = ./config/direnv.toml;
      target = ".config/direnv/direnv.toml";
    };
    sshConfig = {
      executable = false;
      source = ./config/ssh;
      target = ".ssh/config";
    };
    toolVersions = {
      executable = false;
      source = ./config/.tool-versions;
      target = ".tool-versions";
    };
  };

  # Config using Home Manager modules
  programs.git = import ./config/git.nix;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Run 'man home-configuration.nix' to see all available options.
}
