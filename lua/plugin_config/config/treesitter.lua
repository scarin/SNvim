local function tree_setup()
	local tree = require('nvim-treesitter.configs')

	local servers = {}

	for k, _ in pairs(require('plugin_config.config.lsp_table')) do
		table.insert(servers, k)
	end

	tree.setup {
		ensure_installed = servers,
		highlight = {
			enable = true,
			use_languagetree = true,
		},
	}
end

tree_setup()
