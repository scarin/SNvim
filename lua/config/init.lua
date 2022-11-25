local do_plugin_setup = function()
  require('config.lsp_installer')
  require('config.lsp_config')
  require('config.cmp_config')

  require('config.nvimtree')
  require('config.treesitter')
  require('config.bufferline')
  require('config.indent_blankline')
  require('config.bubbles')
  -- require('config.material')
  -- require('config.lualine_conf')
  -- require('config.onedark')

  require('nvim-autopairs').setup({
    disable_in_visualblock = true
  })
  require('todo-comments').setup()
  require('alpha').setup(require('alpha.themes.startify').config)
  -- require('alpha').setup(require('alpha.themes.dashboard').config)
  require('config.comment')
  require('config.prettier')
end

do_plugin_setup()

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
