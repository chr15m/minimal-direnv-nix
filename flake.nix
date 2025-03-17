{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }:
    let
      # ========== Customize packages here ==========
      packages = [
        "nodejs_20"
        "python310"
        "goaccess"
      ];
      # ==============================================
      
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShell.${system} = pkgs.mkShell {
        buildInputs = map (name: pkgs.${name}) packages;
      };
    };
}
