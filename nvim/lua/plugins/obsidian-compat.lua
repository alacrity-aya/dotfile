return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      obsidian_disable_render_markdown = {
        {
          event = { "BufReadPre", "BufNewFile" },
          pattern = vim.fn.expand "~/Documents/Obsidian Vault" .. "/*.md",
          callback = function(args)
            vim.b[args.buf].render_markdown_enabled = false

            pcall(function() require("render-markdown").disable() end)
          end,
        },
      },
    },
  },
}
