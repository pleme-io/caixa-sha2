# nix/modules/nixos.nix — auto-generated from sha2.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.sha2;
in {
  options.services.sha2 = {
    enable = lib.mkEnableOption "sha2";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.sha2 or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
