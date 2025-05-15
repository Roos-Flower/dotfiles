return {
  {
    "saghen/blink.compat",
    version = "*",
    lazy = true,
    opts = {},
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      { "R-nvim/cmp-r" },
    },
    sources = {
      providers = {
        cmp_r = {
          name = "cmp_r",
          module = "blink.compat.source",
        },
      },
    },
  },
}
