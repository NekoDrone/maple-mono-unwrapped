{
  description = "Maple Mono font unwrapped (build it yourself with configs)";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.xz";
  };

  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      inherit (nixpkgs) lib;

      forAllSystems =
        f: lib.genAttrs lib.systems.flakeExposed (system: f nixpkgs.legacyPackages.${system});

      maple-mono-unwrapped = import ./default.nix { inherit nixpkgs; };
    in
    {
      packages = forAllSystems (maple-mono-unwrapped);
    };
}
