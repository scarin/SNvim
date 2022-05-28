local vim = G_VIM

-- opt setting
local function set_default_opt()
	local default_options = {
		backup         = false,
		clipboard      = "unnamedplus",
		cmdheight      = 1,
		colorcolumn    = "99999",
		fileencoding   = "utf-8",
		hlsearch       = true,
		ignorecase     = true,
		showtabline    = 2,
		smartcase      = true,
		smartindent    = true,
		splitbelow     = true,
		splitright     = true,
		termguicolors  = true,
		swapfile       = false,
		timeoutlen     = 500,
		title          = true,
		updatetime     = 300,
		writebackup    = false,
		shiftwidth     = 2,
		tabstop        = 2,
		number         = true,
		relativenumber = false,
		numberwidth    = 2,
		signcolumn     = "yes",
		spell          = false,
		spelllang      = "en",
		cursorline     = true,
		guifont        = 'Liga_SFMono_Nerd_Font:h12',
	}

	for k, v in pairs(default_options) do
		vim.opt[k] = v
	end
end

-- g setting
local function set_default_g()
	local default_g = {
		['mapleader'] = ' ',

		-- neovide
		['neovide_transparency'] = 0.98,
		['neovide_remember_window_size'] = true,
		['neovide_cursor_vfx_mode'] = "pixiedust",
		['neovide_cursor_trail_length'] = 0.9,
		['neovide_cursor_animation_length'] = 0.02,
	}

	for k, v in pairs(default_g) do
		vim.g[k] = v
	end

end

local function set_default()
	set_default_opt()
	set_default_g()

	if vim.g.neovide == nil then
		vim.cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
	end

end

set_default()
