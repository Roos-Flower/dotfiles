-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.java" },
  -- { import = "astrocommunity.lsp.nvim-java" },
  -- { import = "astrocommunity.pack.scala" },
  { import = "astrocommunity.pack.astro" },
  -- { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.editing-support.suda-vim" },
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
  -- { import = "astrocommunity.completion.cmp-cmdline" },
  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.search.grug-far-nvim" },
  { import = "astrocommunity.code-runner.sniprun" },
  { import = "astrocommunity.code-runner.compiler-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  -- { import = "astrocommunity.diagnostics.error-lens-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.project.projectmgr-nvim" },
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  { import = "astrocommunity.motion.leap-nvim" },
  -- { import = "astrocommunity.debugging.nvim-dap-view" },
  { import = "astrocommunity.markdown-and-latex.markview-nvim" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.completion.blink-cmp" },
  -- { import = "astrocommunity.pack.tailwindcss" },
  -- { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.editing-support.conform-nvim" },
  { import = "astrocommunity.utility.hover-nvim" },

  -- import/override with your plugins folder
}
