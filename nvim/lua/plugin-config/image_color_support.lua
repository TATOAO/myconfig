local status, telescope = pcall(require, "baleia")
if not status then
	vim.notify("没有找到 baleia")
	return
end


local baleia = require('baleia').setup {}


-- vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
-- 	callback = function()
-- 		baleia.automatically(vim.fn.bufnr('%'))
-- 	end
-- })
