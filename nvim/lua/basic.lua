vim.g.encoding = "UTF-8"

-- set up nvimTree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1


-- TODO set by username
vim.g.python3_host_prog = "/home/atatlan/anaconda3/bin/python"
vim.g.python_host_prog = "/home/atatlan/anaconda3/bin/python"



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
--
vim.g.UltiSnipsExpandTrigger = "<C-l>"
-- vim.g.UltiSnipsJumpForwardTrigger = "<C-l#region
--
-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "<C-m>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
-- vim.api.nvim_set_keymap("i", "<C-s>", '<Plug>(copilot-next)', { noremap = false })
-- vim.api.nvim_set_keymap("i", "<C-a>", '<Plug>(copilot-previous)', { noremap = false })
--
-- set up catppuccin
-- vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
--
--

vim.g.magma_automatically_open_output = false


-- set up nvimTree
local function open_nvim_tree(data)
	-- buffer is a real file on the disk
	local real_file = vim.fn.filereadable(data.file) == 1

	-- buffer is a [No Name]
	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

	if not real_file and not no_name then
		return
	end

	-- open the tree, find the file but don't focus it
	require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })
end

-- automatically open nvimTree
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
