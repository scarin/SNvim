local do_plugin_setup = function()
  require('mason').setup({
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  })
  require('mason-lspconfig').setup {
    -- ensure_installed = { "lua_ls", "rust_analyzer", "volar", "gopls", "bashls" }
  }
  -- require('config.lsp_installer')
  require('config.lsp_config')
  require('config.cmp_config')

  require('config.nvimtree')
  require('config.treesitter')
  require('config.bufferline')
  require('config.indent_blankline')
  require('config.bubbles')
  -- require('config.colorscheme.material')
  -- require('config.colorscheme.onedarkpro')
  -- require('config.colorscheme.dracula')
  require('config.telescope')

  require('nvim-autopairs').setup({ disable_in_visualblock = true })
  require('alpha').setup(require('alpha.themes.startify').config)
  require('config.comment')
  -- require('config.prettier')
  require('hop').setup()
  require('todo-comments').setup()
  --[[
  -- TODO,NOTE,FIX,WARNING
  --]]
  --
end

do_plugin_setup()
