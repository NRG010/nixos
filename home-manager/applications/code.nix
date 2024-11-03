_: {
  programs.vscode = {
    enable = true;
    enableUpdateCheck = true;
    enableExtensionUpdateCheck = true;
    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons

      vscodevim.vim

      ms-python.isort
      ms-python.black
      ms-python.python
      ms-python.debugpy
      njpwerner.autodocstring
      ms-python.vscode-pylance
    ];
  };
}
