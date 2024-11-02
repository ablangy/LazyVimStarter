return {
  "hrsh7th/nvim-cmp",

  opts = function(_, opts)
    table.insert(opts.sorting.comparators, 1, require("clangd_extensions.cmp_scores"))

    opts.sources = opts.sources or {}
    table.insert(opts.sources, { name = "crates" })
  end,
}
