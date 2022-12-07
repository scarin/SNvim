local languages_server = {
  'bashls', -- bash
  'gopls', -- go lang
  'tsserver', -- javascript
  'sumneko_lua', -- lua
  'pyright', -- python
  'rust_analyzer', -- rust
  'vuels', -- vue
}

local function lsp_setup()
  local lsp = require('nvim-lsp-installer')

  local servers = languages_server

  lsp.setup({
    ensure_installed = servers,
    automatic_installation = true,

    ui = {
      icons = {
        server_installed = "✓",
        server_pending = "➜",
        server_uninstalled = "✗"
      }
    },

    log_level = vim.log.levels.ERROR,

    max_concurrent_installers = 16,
  })
end

lsp_setup()
