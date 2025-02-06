require("lazy").setup({
	-- {
	-- 	"sphamba/smear-cursor.nvim",
	-- 	opts = {
	-- 		-- Smear cursor color. Defaults to Cursor GUI color if not set.
	-- 		-- Set to "none" to match the text color at the target cursor position.
	-- 		cursor_color = "#282828",
	--
	-- 		-- Background color. Defaults to Normal GUI background color if not set.
	-- 		normal_bg = "#282828",
	--
	-- 		-- Smear cursor when switching buffers or windows.
	-- 		smear_between_buffers = false,
	--
	-- 		-- Smear cursor when moving within line or to neighbor lines.
	-- 		smear_between_neighbor_lines = false,
	--
	-- 		-- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
	-- 		-- Smears will blend better on all backgrounds.
	-- 		legacy_computing_symbols_support = false,
	-- 	}
	-- },
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"pyright",
				"black",
				"isort",
				"yapf",
				"sql-formatter",
				"lua-language-server"
			}
		}

	},
	"williamboman/mason-lspconfig.nvim",
	{ "neovim/nvim-lspconfig" },
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		    },
	},

	'mhartington/oceanic-next',
	"rktjmp/lush.nvim",
	"terrortylor/nvim-comment",
	{ "lukas-reineke/indent-blankline.nvim" },
	'rmehri01/onenord.nvim',
	'voldikss/vim-floaterm',

	{ "catppuccin/nvim", as = "catppuccin" },
	{"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end
	},
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	'famiu/bufdelete.nvim',

	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	"arkav/lualine-lsp-progress",
	{
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 
			'nvim-lua/plenary.nvim' ,
			{ 
				"nvim-telescope/telescope-live-grep-args.nvim" ,
				-- This will not install any breaking changes.
				-- For major updates, this must be adjusted manually.
				version = "^1.0.0",
			}
		},
		config = function()
			local telescope = require("telescope")

			-- first setup telescope
			telescope.setup({
				-- your config
			})

			-- then load the extension
			telescope.load_extension("live_grep_args")
		end
	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	'nvim-treesitter/nvim-treesitter-textobjects',

	-- Magma
	{ 'dccsillag/magma-nvim', build = ':UpdateRemotePlugins' },

	-- snippet 引擎
	"hrsh7th/vim-vsnip",
	"SirVer/ultisnips",

	-- 补全源
	"hrsh7th/cmp-vsnip",
	"quangnguyen30192/cmp-nvim-ultisnips",
	"hrsh7th/cmp-nvim-lsp", -- { name = nvim_lsp }
	"hrsh7th/cmp-buffer", -- { name = 'buffer' }
	"hrsh7th/cmp-path", -- { name = 'path' }
	"hrsh7th/cmp-cmdline", -- { name = 'cmdline' }

	{"hrsh7th/nvim-cmp",
			dependencies = {
				"quangnguyen30192/cmp-nvim-ultisnips",
				config = function()
					-- optional call to setup (see customization section)
					require("cmp_nvim_ultisnips").setup {}
				end,
				-- If you want to enable filetype detection based on treesitter:
				-- requires = { "nvim-treesitter/nvim-treesitter" },
			},
	},
	-- csv vim
	"chrisbra/csv.vim",
	'simrat39/symbols-outline.nvim',
	'nanotee/sqls.nvim',
	'karb94/neoscroll.nvim',
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	{
		'mrcjkb/rustaceanvim',
		version = '^3', -- Recommended
		ft = { 'rust' },
	},
	'mfussenegger/nvim-dap',
	'theHamsta/nvim-dap-virtual-text',

	-- { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },

	'nvimtools/none-ls.nvim',
	{'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async'},
	{
	"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		},
	},
	-- 'eddiebergman/nvim-treesitter-pyfold'
	{
		"aaronhallaert/advanced-git-search.nvim",
		cmd = { "AdvancedGitSearch" },
		config = function()
			-- optional: setup telescope before loading the extension
			require("telescope").setup{
				-- move this to the place where you call the telescope setup function
				extensions = {
					advanced_git_search = {
							-- See Config
						}
				}
			}

			require("telescope").load_extension("advanced_git_search")
		end,
		dependencies = {
			"nvim-telescope/telescope.nvim",
			-- to show diff splits and open commits in browser
			"tpope/vim-fugitive",
			-- to open commits in browser with fugitive
			"tpope/vim-rhubarb",
			-- optional: to replace the diff from fugitive with diffview.nvim
			-- (fugitive is still needed to open in browser)
			"sindrets/diffview.nvim",
		},
	},
	{
	'stevearc/conform.nvim',
	opts = {},
	},

	-- install without yarn or npm
	{
		-- Install markdown preview, use npx if available.
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function(plugin)
		if vim.fn.executable "npx" then
			vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
		else
			vim.cmd [[Lazy load markdown-preview.nvim]]
			vim.fn["mkdp#util#install"]()
		end
		end,
		init = function()
		if vim.fn.executable "npx" then vim.g.mkdp_filetypes = { "markdown" } end
		end,
	},

	-- leetcode
	{
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
		},
		opts = {
			-- configuration goes here
			cn = { -- leetcode.cn
				enabled = true, ---@type boolean
				translator = true, ---@type boolean
				translate_problems = true, ---@type boolean
			},
			lange = "python3"
		}
	},
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		lazy = false,
		version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
		opts = {
			-- add any opts here
			-- for example
			provider = "zhipu",
			openai = {
				endpoint = "https://api.openai.com/v1",
				model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
				timeout = 30000, -- timeout in milliseconds
				temperature = 0, -- adjust if needed
				max_tokens = 4096,
			},
			vendors = {
				deepseek = {
				__inherited_from = "openai",
				api_key_name = "DEEPSEEK_API",
				endpoint = "https://api.deepseek.com",
				model = "deepseek-coder",
				},
				zhipu = {
				__inherited_from = "openai",
				api_key_name = "ZHIPU_API_KEY",
				endpoint = "https://open.bigmodel.cn/api/paas/v4",
				model = "GLM-4-Flash",
				},
			}

		},
		-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
		build = "make",
		-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
		dependencies = {
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			--- The below dependencies are optional,
			"echasnovski/mini.pick", -- for file_selector provider mini.pick
			"nvim-telescope/telescope.nvim", -- for file_selector provider telescope
			"hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
			"ibhagwan/fzf-lua", -- for file_selector provider fzf
			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
			"zbirenbaum/copilot.lua", -- for providers='copilot'
			{
			-- support for image pasting
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				-- recommended settings
				default = {
				embed_image_as_base64 = false,
				prompt_for_file_name = false,
				drag_and_drop = {
					insert_mode = true,
				},
				-- required for Windows users
				use_absolute_path = true,
				},
			},
			},
			{
			-- Make sure to set this up properly if you have lazy=true
			'MeanderingProgrammer/render-markdown.nvim',
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
			},
		},
	}
})

