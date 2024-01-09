local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local handler = require("lsp.config.handler")
local handlers = handler.handlers

capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

lspconfig.cssls.setup({
  capabilities = capabilities,
  handlers = handlers,
  on_attach = require("lsp.servers.cssls").on_attach,
  settings = require("lsp.servers.cssls").settings,
})
