require("lazy").setup({

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"pyright",
				"sql-formatter",
				"autopep8",
				"black",
				"isort",
				"stylua",
				"lua_ls"
			}
		},
	
	},
	"williamboman/mason-lspconfig.nvim",
	{ "neovim/nvim-lspconfig" },

	'mhartington/oceanic-next',
	"rktjmp/lush.nvim",
	"terrortylor/nvim-comment",
	{ "lukas-reineke/indent-blankline.nvim" },
	'rmehri01/onenord.nvim',

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
		dependencies = { 'nvim-lua/plenary.nvim' }
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
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function() vim.fn["mkdp#util#install"]() end,
	}
})

