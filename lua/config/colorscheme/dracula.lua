local dracula = require('dracula')

dracula.setup({
  transparent_bg = false,
  lualine_bg_color = "#44475a",
  italic_comment = true,
})

vim.cmd [[colorscheme dracula]]
