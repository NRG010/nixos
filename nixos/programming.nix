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
    python312
    python312Packages.isort
    python312Packages.black

    cargo
    rustc
    rust-analyzer
  ];
}

