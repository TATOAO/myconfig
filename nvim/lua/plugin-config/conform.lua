require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
	sql = {"sql_formatter"},
    -- Use a sub-list to run only the first available formatter
	typescript = { { 'prettierd', "prettier" } },
	typescriptreact = { { 'prettierd', "prettier" } },
	javascript = { { 'prettierd', "prettier" } },
	javascriptreact = { { 'prettierd', "prettier" } },
  },
})

local home = os.getenv("HOME")

local configPath = home.."/.config/nvim/lua/plugin-config/sql_formatter_config.json"
-- -- config for sql
require("conform").formatters.sql_formatter = {
  command = "sql-formatter",
  args = {"--config", configPath},
  does_write = false,
}


require("conform").format { async = true, lsp_fallback = true }
