return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local telescope = require("telescope")
      local telescopeConfig = require("telescope.config")

      -- Clone the default Telescope configuration
      local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

      -- I want to search in hidden/dot files.
      table.insert(vimgrep_arguments, "--hidden")
      table.insert(vimgrep_arguments, "--no-ignore")
      -- I don't want to search in the `.git` directory.
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!**/.git/*")
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!**/build/*")
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!**/build-*/*")
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!**/.cache/*")
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!**/.vscode/*")

      telescope.setup({
        defaults = {
          -- `hidden = true` is not supported in text grep commands.
          vimgrep_arguments = vimgrep_arguments,
        },
        pickers = {
          find_files = {
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            find_command = {
              "rg",
              "--hidden",
              "--no-ignore",
              "--files",
              "--glob",
              "!**/.git/*",
              "--glob",
              "!**/build/*",
              "--glob",
              "!**/build-*/*",
              "--glob",
              "!**/.cache/*",
              "--glob",
              "!**/.vscode/*",
            },
          },
        },
      })
    end,
  },
}
