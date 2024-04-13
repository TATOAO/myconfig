require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    -- javascript = { { "prettierd", "prettier" } },
	sql = {"sql_formatter"},
  },
})

local configPath = "~/.config/nvim/lua/plugin-config/sql_formatter_config.json"
-- -- config for sql
require("conform").formatters.sql_formatter = {
  command = "sql-formatter",
  args = {"--version"},
  -- args = {"--config", configPath},
  -- args = {"-o", "~/.config/nvim/lua/plugin-config/shit.sql"},
  does_write = false,
}


