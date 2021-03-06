local vim = G_VIM

-- opt setting
local function set_default_opt()
  local default_options = {
    -- guifont        = 'Liga_SFMono_Nerd_Font:h12',
    backup         = false,
    clipboard      = "unnamedplus",
    cmdheight      = 1,
    colorcolumn    = "99999",
    completeopt    = { "menuone", "noselect" },
    conceallevel   = 0,
    confirm        = true,
    cursorline     = true,
    expandtab      = true,
    fileencoding   = "utf-8",
    foldexpr       = "",
    foldmethod     = "manual",
    guifont        = 'JetBrainsMono_Nerd_Font:h13',
    hidden         = true,
    hlsearch       = true,
    ignorecase     = true,
    number         = true,
    numberwidth    = 2,
    pumheight      = 10,
    relativenumber = false,
    ruler          = false,
    shiftwidth     = 2,
    showmode       = false,
    showtabline    = 2,
    signcolumn     = "yes",
    smartcase      = true,
    smartindent    = true,
    spell          = false,
    spelllang      = "en",
    splitbelow     = true,
    splitright     = true,
    swapfile       = false,
    tabstop        = 2,
    termguicolors  = true,
    timeoutlen     = 300,
    title          = true,
    undofile       = true,
    updatetime     = 300,
    writebackup    = false,
  }

  for k, v in pairs(default_options) do
    vim.opt[k] = v
  end
end

-- g setting
local function set_default_g()
  local default_g = {
    ['mapleader'] = ' ',
    ['prettier#quickfix_enabled'] = 0,
  }
  vim.cmd('autocmd BufWritePre *.vue PrettierAsync')

  for k, v in pairs(default_g) do
    vim.g[k] = v
  end

  if vim.g.neovide == nil then
    vim.cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
  else
    local g_neovide = {
      ['neovide_cursor_animation_length'] = 0.03,
      ['neovide_cursor_trail_length'] = 0.9,
      ['neovide_cursor_vfx_mode'] = "pixiedust",
      ['neovide_profiler'] = false,
      ['neovide_refresh_rate'] = 120,
      ['neovide_remember_window_size'] = true,
      ['neovide_transparency'] = 0.98,
    }
    for k, v in pairs(g_neovide) do
      vim.g[k] = v
    end
  end
end

local function set_default()
  set_default_opt()
  set_default_g()
end

set_default()
