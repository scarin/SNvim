local do_plugin_setup = function()
  require('config.lsp_installer')
  require('config.lsp_config')
  require('config.cmp_config')

  require('config.nvimtree')
  require('config.treesitter')
  require('config.bufferline')
  require('config.indent_blankline')
  require('config.bubbles')
  -- require('config.material')
  require('config.telescope')

  require('nvim-autopairs').setup({
    disable_in_visualblock = true
  })
  require('alpha').setup(require('alpha.themes.startify').config)
  require('config.comment')
  require('config.prettier')
  require('hop').setup()
end

do_plugin_setup()

require("onedarkpro").setup({
  colors = {}, -- Override default colors or create your own
  highlights = {}, -- Override default highlight groups or create your own
  filetypes = { -- Override which filetype highlight groups are loaded
    -- See the 'Configuring filetype highlights' section for the available list
  },
  plugins = { -- Override which plugin highlight groups are loaded
    -- See the 'Supported plugins' section for the available list
  },
  styles = { -- For example, to apply bold and italic, use "bold,italic"
    types = "NONE", -- Style that is applied to types
    numbers = "NONE", -- Style that is applied to numbers
    strings = "italic", -- Style that is applied to strings
    comments = "italic", -- Style that is applied to comments
    keywords = "NONE", -- Style that is applied to keywords
    constants = "NONE", -- Style that is applied to constants
    functions = "bold", -- Style that is applied to functions
    operators = "NONE", -- Style that is applied to operators
    variables = "NONE", -- Style that is applied to variables
    conditionals = "NONE", -- Style that is applied to conditionals
    virtual_text = "NONE", -- Style that is applied to virtual text
  },
  options = {
    bold = true, -- Use bold styles?
    italic = true, -- Use italic styles?
    underline = true, -- Use underline styles?
    undercurl = true, -- Use undercurl styles?

    cursorline = false, -- Use cursorline highlighting?
    transparency = false, -- Use a transparent background?
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
  }
})

-- onedark, onelight, onedark_vivid, onedark_dark
vim.cmd("colorscheme onedark_vivid")
