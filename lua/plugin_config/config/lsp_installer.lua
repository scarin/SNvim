local vim = G_VIM

local function lsp_setup()
	local lsp = require('nvim-lsp-installer')

	local servers = {}
	for _, v in pairs(require('plugin_config.config.lsp_table')) do
		table.insert(servers, v)
	end

	lsp.setup({
		-- ensure_installed = { "sumneko_lua", "gopls", "rust_analyzer", "pyright" },
		ensure_installed = servers,
		automatic_installation = true,

		ui = {
			icons = {
				server_installed = "✓",
				server_pending = "➜",
				server_uninstalled = "✗"
			}
		},

		log_level = vim.log.levels.INFO,

		max_concurrent_installers = 16,
	})
end

lsp_setup()
