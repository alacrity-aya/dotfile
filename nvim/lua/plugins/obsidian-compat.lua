return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      obsidian_disable_render_markdown = {
        {
          event = { "BufReadPre", "BufNewFile" },
          pattern = "*.md",
          callback = function(args)
            local filepath = vim.api.nvim_buf_get_name(args.buf)
            local vault_path = vim.fn.expand "~/Documents/obsidian-vault"

            if filepath:find(vault_path, 1, true) then vim.b[args.buf].render_markdown_enabled = false end
          end,
        },
      },
    },
  },
}
