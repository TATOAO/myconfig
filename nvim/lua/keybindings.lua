local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = { noremap = true, silent = true }

map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)


-- map big I for inserting with default keyboard input chinese


if vim.fn.has("macunix") == 1 then
	-- map("n", "I", "<Esc>:! im-select com.apple.inputmethod.SCIM.Shuangpin<CR>i", opt)
	-- map("n", "O", "<Esc>:! im-select com.apple.inputmethod.SCIM.Shuangpin<CR>o", opt)
elseif vim.fn.has("unix") == 1 then
	-- map("i", "I", "<Esc>:! im-select com.apple.inputmethod.SCIM.Shuangpin<CR>i", opt)
	-- map("i", "O", "<Esc>:! im-select com.apple.inputmethod.SCIM.Shuangpin<CR>o", opt)
end

map("n", "<leader>n", ":nohl<CR>", opt)

-- Nevigation pane resize
-- Alt/Opt + h
map("n", "˙", ":vertical resize +1 <CR>", opt)
-- Alt/Opt + l
map("n", "¬", ":vertical resize -1 <CR>", opt)
-- Alt/Opt + j
map("n", "∆", ":resize +1<CR>", opt)
-- Alt/Opt + k
map("n", "˚", ":resize -1<CR>", opt)



-- nvimTree
-- Alt/Opt + m
map("n", "µ", ":NvimTreeToggle<CR>", opt)




-----   Bufferline move between left and right tag
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("i", "<C-l>", "<C-[>:BufferLineCycleNext<CR>", opt)
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("i", "<C-h>", "<C-[>:BufferLineCyclePrev<CR>", opt)
map("n", "<C-q>", ":Bdelete <CR>", opt)



-- Telescope search by cotent
-- 全局搜索
map("n", "<C-s>", ":Telescope live_grep<CR>", opt)
map("n", "ß", ":Telescope find_files<CR>", opt)



-- Magma
map("n", "<leader>r", ":MagmaEvaluateOperator<CR>", opt)
map("n", "<leader>rr", ":MagmaEvaluateLine<CR>", opt)
map("x", "<leader>r", ":<C-u>MagmaEvaluateVisual<CR>", opt)
map("n", "<leader>re", ":noautocmd MagmaEnterOutput<CR>", opt)
map("n", "<leader>rs", ":MagmaInit python3<CR>", opt)
map("n", "<leader>ri", ":MagmaInterrupt<CR>", opt)
map("n", "<leader>rc", ":MagmaReevaluateCell<CR>", opt)
map("n", "<leader>rd", ":MagmaDelete<CR>", opt)
map("n", "<leader>ro", ":MagmaShowOutput<CR>", opt)



local pluginKeys = {}

-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
	-- rename
	mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
	-- code action
	mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
	-- go xx
	mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
	mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
	mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
	mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
	mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
	-- diagnostic
	mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
	mapbuf("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
	mapbuf("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
	mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
	--
	mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
	-- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
	mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
	mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
	mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
end

-- vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopt

pluginKeys.cmp = function(cmp)
	return {
		["<C-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		--         -- 上一个
		["<C-k>"] = cmp.mapping.select_prev_item(),
		-- 下一个
		["<C-j>"] = cmp.mapping.select_next_item(),
		-- 确认
		["<C-m>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace
		}),
		-- 取消
		["<C-l>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
	}
	-- other command https://blog.51cto.com/u_11090813/5667800
end

-- toggle terminal
map("t", "<C-[>", "<C-\\><C-n>", opt)
map("t", "esc", "<C-\\><C-n>", opt)
map("n", "<leader>\\", ":ToggleTerm<CR>", opt)
map("t", "<leader>\\", "<C-\\><C-n>:ToggleTerm<CR>", opt)
map("x", "<leader>t", "<C-u>:ToggleTermSendVisualLines<CR>", opt)



map("n", "<leader>c", ":DapContinue<CR>", opt)
map("n", "gb", ":DapToggleBreakpoint<CR>", opt)
map("n", "gn", ":DapStepOver<CR>", opt)
map("n", "gs", ":DapStepInto<CR>", opt)
map("n", "go", ":DapStepOut<CR>", opt)
map("n", "<leader>d", ":DapToggleRepl<CR><C-w>j", opt)
map("n", "<leader>c", ":DapContinue<CR>", opt)



map("n", "<leader>xx", "<cmd>lua require(\"trouble\").toggle() <CR>", opt)
map("n", "<leader>xw", "<cmd>lua require(\"trouble\").toggle(\"workspace_diagnostics\") <CR>", opt)
map("n", "<leader>xd", "<cmd>lua require(\"trouble\").toggle(\"document_diagnostics\") <CR>", opt)
map("n", "<leader>xq", "<cmd>lua require(\"trouble\").toggle(\"quickfix\") <CR>", opt)
map("n", "<leader>xl", "<cmd>lua require(\"trouble\").toggle(\"loclist\") <CR>", opt)
map("n", "gR", "<cmd>lua require(\"trouble\").toggle(\"lsp_references\") <CR>", opt)

return pluginKeys


-- Lua
