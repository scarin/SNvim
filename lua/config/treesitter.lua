local function tree_setup()
  local tree = require('nvim-treesitter.configs')

  local servers = {}

  for k, _ in pairs(require('config.lsp_table')) do
    table.insert(servers, k)
    -- if servers == 'lua' then
    --   vim.cmd('TSToggle highlight')
    -- end
  end

  tree.setup {
    ensure_installed = servers,

    highlight = {
      enable = true,
      use_languagetree = true,
      additional_vim_regex_highlighting = false,
      -- disable = { "lua" },
    },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<CR>',
        node_incremental = '<CR>',
        node_decremental = '<BS>',
        scope_incremental = '<TAB>',
      }
    },

    indent = {
      enable = true
    }
  }
end

tree_setup()
