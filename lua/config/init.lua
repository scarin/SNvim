local do_setup = function()
  require('config.lsp_installer')
  require('config.lsp_config')
  require('config.cmp_config')
  require('config.nvimtree')
  require('config.treesitter')
  require('config.lualine')
  require('config.bubbles')
  require('config.bufferline')
  require('config.indent_blankline')

  -- require('config.material')
  -- require('plugin_config.config.tagbar')
  require('config.onedark')
  -- require('plugin_config.config.rust_tools')
  -- require('mason').setup()

  require('nvim-autopairs').setup({
    disable_in_visualblock = true
  })
  require('todo-comments').setup()
  require('alpha').setup(require('alpha.themes.startify').config)
  -- require('alpha').setup(require('alpha.themes.dashboard').config)
  require("Comment").setup({
    extra = {
      eol = 'gca', ---Add comment at the end of line
    }
  })

  -- require('renamer').setup({
  --   title = '*RENAME*',
  --   min_width = 30,
  --   max_width = 60
  -- })

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

  -- vim.cmd 'colorscheme gruvbox-material'
end

do_setup()
