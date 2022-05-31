require('plugin_config.config.lsp_installer')
require('plugin_config.config.lsp_config')
require('plugin_config.config.cmp_config')
require('plugin_config.config.nvimtree')
require('plugin_config.config.treesitter')
require('plugin_config.config.lualine')
require('plugin_config.config.bufferline')
require('plugin_config.config.tagbar')
require('plugin_config.config.onedark')
-- require('plugin_config.config.rust_tools')


require('indent_blankline').setup()
require('nvim-autopairs').setup({
	disable_in_visualblock = true
})
require('todo-comments').setup()
require('toggleterm').setup()
require('alpha').setup(require('alpha.themes.startify').config)
require("Comment").setup({
	extra = {
		eol = 'gca', ---Add comment at the end of line
	} })

require('renamer').setup({
	title = '*RENAME*',
	min_width = 30,
	max_width = 50
})

--[[
eg:
PERF:
HACK:
TODO:
NOTE:
FIX:
BUG:
ISSUE:
FIXME:
FIXIT:
WARNING:

cmd:
:TodoQuickFix
:TodoLocList
:TodoTrouble
:TodoTelescope
]]
