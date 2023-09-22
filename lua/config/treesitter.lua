local languages = {
  -- 'bash',
  'go',
  'javascript',
  'lua',
  'python',
  'rust',
  'vue',
  'yaml',
  -- 'help',
  'vim',
}

local function tree_setup()
  local tree = require('nvim-treesitter.configs')

  tree.setup {
    ensure_installed = languages,

    highlight = {
      enable = true,
      use_languagetree = true,
      additional_vim_regex_highlighting = false,
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
    },

    autotag = {
      enable = true,
    }
  }
end

tree_setup()
