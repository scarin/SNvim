local function set_prettier_g()
  local prettier_g = {
    ['prettier#quickfix_enabled'] = 0,
    ['prettier#config#print_width'] = 160,
    ['prettier#config#tab_width'] = 2,
  }

  for k, v in pairs(prettier_g) do
    vim.g[k] = v
  end

  vim.cmd('autocmd BufWritePre *.vue PrettierAsync')
end

set_prettier_g()
