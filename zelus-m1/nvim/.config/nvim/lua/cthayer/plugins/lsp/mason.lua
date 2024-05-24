return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls", -- lua language server
				"pyright", -- python language server
				"pylsp", -- python language server
				"r_language_server", -- R language server
				"bashls", -- bash language server
				"docker_compose_language_service", -- docker compose language server
				"dockerls", -- docker language server
				"sqlls", -- sql language server
				"terraformls", -- terraform language server
				"yamlls", -- yaml language server
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"stylua", -- lua formatter
				"black", -- python formatter
				"isort", -- python formatter
				"prettier", -- markdown formatter
				"sqlfluff", -- sql linting
				"write-good", -- markdown formatter
				"beautysh", -- zsh formatter
				"tflint", -- terraform linter
				"yamlfix", -- yaml formatter
			},
		})
	end,
}
