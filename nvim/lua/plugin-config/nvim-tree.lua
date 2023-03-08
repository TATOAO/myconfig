local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
	vim.notify("没有找到 nvim-tree")
	return
end


nvim_tree.setup({
	open_on_setup = true,
	open_on_setup_file = true,
	-- project plugin 需要这样设置
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	-- 隐藏 .文件 和 node_modules 文件夹
	view = {
		-- 宽度
		width = 30,
		-- 也可以 'right'
		side = 'left',
		-- 不显示行数
		number = false,
		relativenumber = false,
		-- 显示图标
		signcolumn = 'yes',
	},
	actions = {
		open_file = {
			-- 首次打开大小适配
			resize_window = true,
		},
	},
})
