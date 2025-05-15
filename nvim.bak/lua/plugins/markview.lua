local presets = require "markview.presets"

return {
  "OKY2DEV/markview.nvim",
  opts = {
    markdown = {
      headings = presets.headings.glow,
    },
  },
}
