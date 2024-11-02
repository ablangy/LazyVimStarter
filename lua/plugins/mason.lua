return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "shfmt",
        "cmakelang",
        "cmakelint",
        "codelldb",
      },
    },
  },
}
