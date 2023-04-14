local status, telescope = pcall(require, "image")
if not status then
	vim.notify("没有找到 image")
	return
end


require('image').setup {
	render = {
		min_padding = 5,
		show_label = true,
		use_dither = true,
		foreground_color = false,
		background_color = false
	},
	events = {
		update_on_nvim_resize = true,
	},
}
