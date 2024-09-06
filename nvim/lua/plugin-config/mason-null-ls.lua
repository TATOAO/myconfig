require("mason-null-ls").setup(
	{
	    ensure_installed = { 
			"stylua", 
			"jq", 
			"pyright",
			"black",
			"isort",
			"yapf",
			"sql-formatter",
			"lua-language-server"
		}
	}
)
