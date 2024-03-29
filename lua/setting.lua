local vim = vim

-- opt setting
local function set_default_opt()
  local default_options = {
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
    guifont        = 'RobotoMono_Nerd_Font:h13',
    -- guifont        = 'Cousine_Nerd_Font:h13',
    -- guifont        = 'Liga_SFMono_Nerd_Font:h12',
    -- guifont        = 'JetBrainsMono_Nerd_Font:h14',
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
    mouse          = "",
  }

  for k, v in pairs(default_options) do
    vim.opt[k] = v
  end

  vim.g['mapleader'] = ' '
  vim.g['python3_host_prog'] = '/usr/local/bin/python3'
end

local function set_neovide_g()
  -- if vim.g.neovide == nil then
  -- vim.cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
  if vim.g.neovide then
    local g_neovide = {
      -- ['neovide_cursor_animation_length'] = 0.13,
      -- ['neovide_cursor_trail_size']       = 0.8,
      -- ['neovide_cursor_trail_length']     = 0.9,
      ['neovide_cursor_vfx_mode']        = "pixiedust",
      -- ['neovide_cursor_vfx_mode']         = "torpedo",
      ['neovide_profiler']               = false,
      -- ['neovide_refresh_rate']           = 60,
      -- ['neovide_refresh_rate_idle']      = 5,
      ['neovide_remember_window_size']   = true,
      ['neovide_transparency']           = 0.99,
      ['neovide_input_use_logo']         = true,
      ['neovide_floating_blur_amount_x'] = 2.0,
      ['neovide_floating_blur_amount_y'] = 2.0,
      ['neovide_hide_mouse_when_typing'] = true,
      ['neovide_theme']                  = 'auto',
      ['neovide_input_ime']              = true,
    }
    for k, v in pairs(g_neovide) do
      vim.g[k] = v
    end
  end
end

local function set_default()
  set_default_opt()
  set_neovide_g()
end

set_default()
