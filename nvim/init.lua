
require('basic')

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

require("plugin-config.nvim-treesitter")

require("plugin-config.indent-blankline")

-- if vim.fn.has("macunix") == 1 then
-- 	require("plugin-config.imselect_config")
-- end

require("plugin-config.nvim-comment-config")

require("plugin-config.symbolsoutline")

require("plugin-config.python-dap")

require("lsp.setup")

require("lsp.cmp")

require("mason").setup()

require("mason-lspconfig").setup()

require('neoscroll').setup()

require('plugin-config.treesitter_textobject')

-- require("toggleterm-config")

require("toggleterm").setup {}
-- require('indent_object').setup()
--
