local opts = {
	on_attach = function(client, bufnr)
		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end


		-- 绑定快捷键
		require('keybindings').mapLSP(buf_set_keymap)
		-- 保存时自动格式化
		vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
	end,
}

local lspconfig = require("lspconfig")
lspconfig.quick_lint_js.setup(opts)
