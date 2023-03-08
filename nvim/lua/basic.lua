vim.g.encoding = "UTF-8"

-- set up nvimTree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- vim.g.python3_host_prog = ""
-- vim.g.python_host_prog = ""


-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80"
-- 缩进2个空格等于一个Tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4




-- UtiSnips
vim.g.UltiSnipsJumpForwardTrigger = "<C-l>"
vim.g.UltiSnipsJumpBackwardTrigger = "<C-h>"
-- UtiSnips change trigger key

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-e>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-m>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- set up catppuccin
-- vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
--
--

vim.g.magma_automatically_open_output = false
