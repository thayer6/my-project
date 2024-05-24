return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			local parsers = require("nvim-treesitter.parsers")
			config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
			vim.treesitter.language.register("bash", { "sh", "shrc" })
		end,
	},
}
