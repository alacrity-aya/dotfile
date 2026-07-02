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
        path = "~/Documents/obsidian-vault/",
      },
    },

    note_id_func = function(title)
      if title ~= nil then
        return title
      else
        return tostring(os.date "%Y%m%d%H%M%S")
      end
    end,
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
    templates = {
      folder = "template",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
