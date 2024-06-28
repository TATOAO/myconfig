local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("没有找到 telescope")
  return
end

telescope.setup({
  defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
    -- 窗口内快捷键
    -- mappings = require("keybindings").telescopeList,
  },
  pickers = {
    -- 内置 pickers 配置
    find_files = {
      -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
      -- theme = "dropdown", 
    }
  },
  extensions = {
	{
		advanced_git_search = {
			-- Browse command to open commits in browser. Default fugitive GBrowse.
			-- {commit_hash} is the placeholder for the commit hash.
			browse_command = "GBrowse {commit_hash}",
			-- when {commit_hash} is not provided, the commit will be appended to the specified command seperated by a space
			-- browse_command = "GBrowse",
			-- => both will result in calling `:GBrowse commit`

			-- fugitive or diffview
			diff_plugin = "diffview",
			-- customize git in previewer
			-- e.g. flags such as { "--no-pager" }, or { "-c", "delta.side-by-side=false" }
			git_flags = {},
			-- customize git diff in previewer
			-- e.g. flags such as { "--raw" }
			git_diff_flags = {},
			-- Show builtin git pickers when executing "show_custom_functions" or :AdvancedGitSearch
			show_builtin_git_pickers = false,
			entry_default_author_or_date = "author", -- one of "author" or "date"
			keymaps = {
				-- following keymaps can be overridden
				toggle_date_author = "<C-w>",
				open_commit_in_browser = "<C-o>",
				copy_commit_hash = "<C-y>",
				show_entire_commit = "<C-e>"
			},
			-- Telescope layout setup
			-- telescope_theme = {
			-- 	function_name_1 = {
			-- 	},
			-- 	function_name_2 = "dropdown",
			-- 	show_custom_functions = {
			-- 		layout_config = { width = 0.4, height = 0.4 },
			-- 	},
			--
			-- }
		}
	}
  },
})

