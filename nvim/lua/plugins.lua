require("lazy").setup({
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	{ "neovim/nvim-lspconfig" },

	'mhartington/oceanic-next',
	"rktjmp/lush.nvim",
	"terrortylor/nvim-comment",
	{ "lukas-reineke/indent-blankline.nvim" },

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

	-- markdown
	{"iamcco/markdown-preview.nvim",
	    build = function() vim.fn["mkdp#util#install"]() end,
	},
	
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
	{'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async'}
	-- 'eddiebergman/nvim-treesitter-pyfold'
})

