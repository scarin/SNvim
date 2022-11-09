local function lsp_setup()
  local lsp = require('nvim-lsp-installer')

  local servers = G_LANGUAGES_SERVER

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

    log_level = vim.log.levels.INFO,

    max_concurrent_installers = 16,
  })
end

lsp_setup()
