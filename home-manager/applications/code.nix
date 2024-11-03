{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    enableUpdateCheck = true;
    enableExtensionUpdateCheck = true;
    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons

      vscodevim.vim

      ms-python.isort
      ms-python.python
      ms-python.debugpy
      njpwerner.autodocstring
    ];
    userSettings = {
      "editor.fontFamily" = "CaskaydiaCove Nerd Font Mono";
      "terminal.integrated.fontFamily" = "CaskaydiaCove Nerd Font Mono";
      "workbench.colorTheme" = "Catppuccin Mocha";
    };
  };
}
