
local null_ls = require("null-ls")
-- it is actually using none-ls

null_ls.setup({
    sources = {
        -- null_ls.builtins.formatting.jq,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
		-- null_ls.builtins.formatting.sqlfmt,
		null_ls.builtins.formatting.sql_formatter,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.stylua,
		-- null_ls.builtins.formatting.tsstandard,
        -- null_ls.builtins.diagnostics.eslint,
        -- null_ls.builtins.completion.spell,
    },
})
