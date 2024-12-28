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
    python313Full
    python313Packages.isort
    python313Packages.black

    cargo
    rustc
    rust-analyzer
  ];
}

