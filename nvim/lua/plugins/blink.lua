return {
  "saghen/blink.cmp",
  opts = {
    cmdline = {
      keymap = {
        -- recommended, as the default keymap will only show and select the next item
        ["<Tab>"] = { "show", "accept" },
      },
      completion = { menu = { auto_show = true } },
    },
  },
}
