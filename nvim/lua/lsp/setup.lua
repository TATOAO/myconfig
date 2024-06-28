-- local lsp_installer = require("nvim-lsp-installer")
--
require("mason").setup()
require("mason-lspconfig").setup()

require("lsp.config.python")
require("lsp.config.lua")
require("lsp.config.js")

-- require("lsp.config.rust")
-- require("lsp.config.sql")
-- lspconfig.sumneko_lua.setup{}
-- lspconfig.pyright.setup{}
