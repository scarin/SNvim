local settings = {
  ui = {
    border = "double",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
}


require("mason").setup(settings)

-- local servers = {}
for _, server in pairs(require('config.lsp_table')) do
  -- table.insert(servers, v)
  -- print(server)
  vim.cmd('MasonInstall ' .. server)
end

-- vim.cmd('MasonInstall rust-analyzer')
