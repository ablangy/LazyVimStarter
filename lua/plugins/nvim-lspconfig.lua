return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("compile_commands.json")(fname)
          end,
        },
        neocmake = {},
      },
    },
  },
}
