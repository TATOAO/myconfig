local lspconfig = require("lspconfig")
local handler = require("lsp.config.handler")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local handlers = handler.handlers

capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

lspconfig.eslint.setup({
  capabilities = capabilities,
  handlers = handlers,
  on_attach = require("lsp.servers.eslint").on_attach,
  settings = require("lsp.servers.eslint").settings,
})
