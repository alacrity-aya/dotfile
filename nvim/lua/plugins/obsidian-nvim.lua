return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  init = function() vim.opt.conceallevel = 2 end,
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false,
    workspaces = {
      {
        path = "~/Documents/Obsidian Vault",
      },
    },
    picker = {
      name = "telescope.nvim",
    },
    daily_notes = {
      enabled = true,
      folder = "daily",
      date_format = "YYYY/MM/YYYY-MM-DD",
      default_tags = { "daily" },
    },
    attachments = {
      folder = "attachment",
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
