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
    python314Full
    python314Packages.isort
    python314Packages.black

    cargo
    rustc
    rust-analyzer
  ];
}

