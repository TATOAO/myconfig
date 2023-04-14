local status, telescope = pcall(require, "hologram")
if not status then
	vim.notify("没有找到 hologram")
	return
end

require('hologram').setup {
	auto_display = true -- WIP automatic markdown image display, may be prone to breaking
}
