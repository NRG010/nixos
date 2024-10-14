{ pkgs, ... }: {

  programs.neovim = 

let
  toLua = str: "lua << EOF\n${str}\nEOF\n";
  toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
in {

    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;

    plugins = with pkgs.vimPlugins; [

      {
        plugin = lualine-nvim;
        config = toLuaFile ./plugin/lualine-nvim.lua;
      }

      {
        plugin = nvim-tree-lua;
        config = toLuaFile ./plugin/tree.lua;
      }

      nvim-web-devicons

    ];

    extraLuaConfig = ''
      ${builtins.readFile ./options.lua}
      ${builtins.readFile ./mappings.lua}
    '';
  };
}
