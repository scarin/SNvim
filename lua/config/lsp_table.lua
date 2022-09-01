-- can find every server here
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local lsp_table = {
  -- ['json'] = 'jsonls',
  ['bash'] = 'bashls',
  ['go'] = 'gopls',
  ['javascript'] = 'tsserver',
  ['lua'] = 'sumneko_lua',
  ['python'] = 'pyright',
  ['rust'] = 'rust_analyzer',
  ['vue'] = 'vuels',
  ['HTML'] = 'html',
  -- ['cpp'] = 'clangd',
  -- ['cpp'] = 'ccls',
}

return lsp_table
