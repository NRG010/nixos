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
    python312Full
    python314Full
    python312Packages.pip
    python312Packages.isort
    python312Packages.black
    python312Packages.numpy
    python312Packages.pygame
    python312Packages.matplotlib

    cargo
    rustc
    rust-analyzer
  ];
}

