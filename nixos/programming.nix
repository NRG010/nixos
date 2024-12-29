{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim

    gcc

    nixd
    nixfmt-classic

    shfmt
    bash-language-server

    stylua
    lua-language-server

    pyright
    python3
    python3Packages.black
    python3Packages.isort
    python3Packages.numpy
    python3Packages.pygmae
    python3Packages.matplotlib

    cargo
    rustc
  ];
}

