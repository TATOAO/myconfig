require('basic')

require("keybindings")

require("plugins")

require("colorscheme")

require("plugin-config.bufferline")

require("plugin-config.nvim-tree")

require("plugin-config.lualine")

require("plugin-config.telescope")

require("plugin-config.nvim-treesitter")

require("plugin-config.indent-blankline")

if vim.fn.has("macunix") == 1 then
	require("plugin-config.imselect_config")
end

require("plugin-config.nvim-comment-config")

require("plugin-config.symbolsoutline")

require("lsp.setup")

require("lsp.cmp")

require("mason").setup()

require("mason-lspconfig").setup()

require('neoscroll').setup()

require('plugin-config.treesitter_textobject')

-- require("toggleterm-config")

require("toggleterm").setup {}
-- require('indent_object').setup()
