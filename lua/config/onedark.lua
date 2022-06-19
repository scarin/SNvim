local vim = G_VIM

require('onedark').setup {
  -- Main options --
  style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  -- transparent = vim.fn.exists('g:neovide') < 1 and true or false, -- Show/hide background
  transparent = vim.g.neovide == nil and true or false, -- Show/hide background
  term_colors = true, -- Change terminal color as per the selected theme style
  ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

  -- toggle theme style ---
  toggle_style_key = '<leader>j', -- Default keybinding to toggle
  -- toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
  toggle_style_list = { 'light', 'warm', 'deep', 'cool', 'dark', 'warmer' }, -- List of styles to toggle between

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = 'italic', --'italic',
    keywords = 'italic',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },

  -- Custom Highlights --
  colors = {}, -- Override default colors
  highlights = {}, -- Override highlight groups

  -- Plugins Config --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },
}

require('onedark').load()
