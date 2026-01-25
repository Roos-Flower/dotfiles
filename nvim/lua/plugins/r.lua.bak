return {
  { "R-nvim/R.nvim", version = "~0.1.0" },
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(
          opts.ensure_installed,
          { "markdown", "markdown_inline", "r", "rnoweb", "yaml", "latex" }
        )
      end
    end,
  },
}
