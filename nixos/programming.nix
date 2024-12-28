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
    (python312.withPackages
      (ps: with ps; [ isort black numpy pygame matplotlib ]))

    cargo
    rustc
    rust-analyzer
  ];
}

