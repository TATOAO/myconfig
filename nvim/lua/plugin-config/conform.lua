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

local home = os.getenv("HOME")

local configPath = home.."/.config/nvim/lua/plugin-config/sql_formatter_config.json"
print(configPath)
-- -- config for sql
require("conform").formatters.sql_formatter = {
  -- command = "sql-formatter --config "..configPath,
  command = "sql-formatter",
  -- args = {},
  -- args = {"--version"},
  -- args = {"--config "..configPath},
  args = {"--config", configPath},
  -- args = {"-o", "~/.config/nvim/lua/plugin-config/shit.sql"},
  does_write = false,
}


