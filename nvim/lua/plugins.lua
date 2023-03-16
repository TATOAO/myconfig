local packer = require("packer")
packer.startup(
	function(use)
		-- Packer 可以管理自己本身
		use 'wbthomason/packer.nvim'
		-- 你的插件列表...
		--
		--
		use { "williamboman/mason.nvim" }

		use "williamboman/mason-lspconfig.nvim"

		-- colorscheme lush
		use "rktjmp/lush.nvim"

		-- tokyonight
		-- use("folke/tokyonight.nvim")

		-- oceanic next
		use('mhartington/oceanic-next')

		-- catppuccin
		use { "catppuccin/nvim", as = "catppuccin" }

		-- bufferline
		use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' } }

		-- nvim-tree
		use {
			'kyazdani42/nvim-tree.lua',
			requires = {
				'kyazdani42/nvim-web-devicons', -- optional, for file icons
			},
			tag = 'nightly'         -- optional, updated every week. (see issue #1193)
		}

		-- lualine 底部标签
		use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
		use("arkav/lualine-lsp-progress")

		-- telescope
		use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" }
		}

		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

		use 'nvim-treesitter/nvim-treesitter-textobjects'

		--- Completion -----------

		-- 补全引擎
		use("hrsh7th/nvim-cmp")
		-- snippet 引擎
		use("hrsh7th/vim-vsnip")
		use("SirVer/ultisnips")
		-- 补全源
		use("hrsh7th/cmp-vsnip")
		use("quangnguyen30192/cmp-nvim-ultisnips")
		use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		use("hrsh7th/cmp-path") -- { name = 'path' }
		use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

		--
		use({
			"hrsh7th/nvim-cmp",
			requires = {
				"quangnguyen30192/cmp-nvim-ultisnips",
				config = function()
					-- optional call to setup (see customization section)
					require("cmp_nvim_ultisnips").setup {}
				end,
				-- If you want to enable filetype detection based on treesitter:
				-- requires = { "nvim-treesitter/nvim-treesitter" },
			},
			config = function()
				local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
				require("cmp").setup({
					snippet = {
						expand = function(args)
							vim.fn["UltiSnips#Anon"](args.body)
						end,
					},
					sources = {
						{ name = "ultisnips" },
						-- more sources
					},
					-- recommended configuration for <Tab> people:
					mapping = {
						["<Tab>"] = cmp.mapping(
							function(fallback)
								cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
							end,
							{ "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
						),
						["<S-Tab>"] = cmp.mapping(
							function(fallback)
								cmp_ultisnips_mappings.jump_backwards(fallback)
							end,
							{ "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
						),
						-- The jumping defaul set to Ctrl + j & Ctrl + k
					},
				})
			end,
		})

		-- 常见编程语言代码段
		use("rafamadriz/friendly-snippets")

		------ LSP ----------------
		-- use("williamboman/nvim-lsp-installer")
		-- Lspconfig
		use({ "neovim/nvim-lspconfig" })

		function os.capture(cmd, raw)
			local f = assert(io.popen(cmd, 'r'))
			local s = assert(f:read('*a'))
			f:close()
			if raw then return s end
			s = string.gsub(s, '^%s+', '')
			s = string.gsub(s, '%s+$', '')
			s = string.gsub(s, '[\n\r]+', ' ')
			return s
		end

		if (os.capture('uname') == 'Linux')
		then
			-- nonthing
		else
			-- if mac then use im-select
			use('keaising/im-select.nvim')
		end

		-- indent-blankline
		use("lukas-reineke/indent-blankline.nvim")

		-- command
		use("terrortylor/nvim-comment")

		-- jupyter
		use({ 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' })

		-- jupyter accent
		use({ "untitled-ai/jupyter_ascending.vim" })

		-- Markdown preview
		use({
			"iamcco/markdown-preview.nvim",
			run = "cd app && npm install",
			setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
			ft = { "markdown" },
		})

		use('karb94/neoscroll.nvim')


		-- diff tool
		use({ 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' })

		use 'simrat39/symbols-outline.nvim'

		use 'nanotee/sqls.nvim'


		-- intent object
		-- use 'urxvtcd/vim-indent-object'
	end)
