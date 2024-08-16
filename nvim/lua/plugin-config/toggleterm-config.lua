local status, telescope = pcall(require, "toggleterm")
if not status then
	vim.notify("没有找到 toggleterm")
	return
end

telescope.setup({
  direction = 'float',
  shell = vim.o.shell,
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    border = 'curved'
    -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
    -- width = <value>,
    -- height = <value>,
    -- row = <value>,
    -- col = <value>,
    -- winblend = 3,
    -- zindex = <value>,
    -- title_pos = 'left' | 'center' | 'right', position of the title of the floating window
  },
  winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
})
