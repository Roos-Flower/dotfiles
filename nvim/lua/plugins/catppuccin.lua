return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      highlight_overrides = {
        mocha = function(c)
          return {
            LineNr = { fg = c.overlay1 },
            ["@tag.attribute"] = { style = {} },
          }
        end,
      },
    },
  },
}
