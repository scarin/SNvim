-- can find every server here
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local lsp_table = {
  ['go'] = 'gopls',
  ['rust'] = 'rust_analyzer',
  ['lua'] = 'sumneko_lua',
  ['python'] = 'pyright',
  ['vue'] = 'vuels',
  ['javascript'] = 'tsserver',
  ['bash'] = 'bashls',
  -- ['json'] = 'jsonls',
}

return lsp_table
