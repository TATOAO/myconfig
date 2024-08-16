require("basic")

-- vim.log.levels.DEBUG = true  -- Ensure DEBUG messages are not filtered out

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("keybindings")

require("plugins")

require("colorscheme")

require("plugin-config.bufferline")

require("plugin-config.nvim-tree")

require("plugin-config.lualine")

require("plugin-config.telescope")

-- image
--
-- require("plugin-config.image_viewer")

-- require("plugin-config.hologram_image_viewer")

-- require("plugin-config.image_color_support")

--------------------------------------

require("plugin-config.nvim-treesitter")

require("plugin-config.indent-blankline")

-- if vim.fn.has("macunix") == 1 then
-- 	require("plugin-config.imselect_config")
-- end

require("plugin-config.nvim-comment-config")

require("plugin-config.symbolsoutline")

require("lsp.setup")

require("lsp.cmp")

require("mason").setup()

require("mason-lspconfig").setup()

require("neoscroll").setup()

require("plugin-config.treesitter_textobject")

require("plugin-config.toggleterm-config")
require('plugin-config.python-dap')
require('plugin-config.nvim-dap-virtual-text')
require('plugin-config.nvim-ufo')
require('plugin-config.null-ls')
require('plugin-config.trouble')
require('plugin-config.diffview')
require('plugin-config.conform')
require('plugin-config.markdown_preview')
require('plugin-config.mason_install')

-- require('indent_object').setup()
--
