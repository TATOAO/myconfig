-- Require the lspconfig plugin
local lspconfig = require('lspconfig')

-- Setup tsserver (TypeScript Server)
-- lspconfig.ts_ls.setup {
--     on_attach = function(client, bufnr)
--         -- Optional: Disable tsserver formatting if you are using another formatter
--         client.server_capabilities.document_formatting = false
--     end,
--     flags = {
--         debounce_text_changes = 150,
--     },
--     filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
--     cmd = { "typescript-language-server", "--stdio" },
-- }
