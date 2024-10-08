local lspconfig = require("lspconfig")
local helper = require('helper')

local opts = {
	root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname) or vim.fn.getcwd()
    end,
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "workspace",
				useLibraryCodeForTypes = true,
				-- extraPaths = { "/Users/tatoaoliang/.config/nvim" }
			},
			pythonPath = helper.python_path
		}
	},
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		-- 禁用格式化功能，交给专门插件插件处理
		-- client.resolved_capabilities.document_formatting = false
		-- client.resolved_capabilities.document_range_formatting = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end

		-- 绑定快捷键
		require('keybindings').mapLSP(buf_set_keymap)
		-- 保存时自动格式化
		-- vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')

	end,
}

lspconfig.pyright.setup(opts)
-- 查看目录等信息
-- return {
-- 	on_setup = function(server)
-- 		server:setup(opts)
-- 	end,
-- }
--
