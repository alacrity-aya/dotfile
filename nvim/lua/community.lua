-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- lua
  { import = "astrocommunity.pack.lua" },
  -- rust
  { import = "astrocommunity.pack.rust" },
  -- cpp
  { import = "astrocommunity.pack.cpp" },
  -- python
  { import = "astrocommunity.pack.python" },
  -- go
  { import = "astrocommunity.pack.go" },
  -- typescript
  { import = "astrocommunity.pack.typescript" },
  -- theme
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- motion
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.flash-nvim" },
  -- flatten-nvim
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  -- notify
  { import = "astrocommunity.utility.noice-nvim" },
  -- markdown
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
}
