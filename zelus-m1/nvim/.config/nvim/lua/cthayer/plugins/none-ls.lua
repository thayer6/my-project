return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local diagnostics = null_ls.builtins.diagnostics
		local formatting = null_ls.builtins.formatting
		local completion = null_ls.builtins.completion
		null_ls.setup({
			sources = {
				completion.luasnip,
				diagnostics.write_good,
				diagnostics.markdownlint,
				formatting.prettier,
				formatting.stylua,
				formatting.styler,
				formatting.isort,
				formatting.yamlfix,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
