vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

G_LANGUAGES = {
  'bash',
  'go',
  'javascript',
  'lua',
  'python',
  'rust',
  'vue',
}

G_LANGUAGES_SERVER = {
  'bashls', -- bash
  'gopls', -- go lang
  'tsserver', -- javascript
  'sumneko_lua', -- lua
  'pyright', -- python
  'rust_analyzer', -- rust
  'vuels', -- vue
}

local dracula = require('dracula')
dracula.setup({
  italic_comment = true,
})
vim.cmd [[colorscheme dracula]]

require('setting')
require('keymapping')
require('config')
