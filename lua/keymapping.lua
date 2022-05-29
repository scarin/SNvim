local vim = G_VIM

local function set_key_map()
	local default_opts = { noremap = true, silent = true }

	local mode_key_map = {
		[''] = {},
		['n'] = {
			['<Leader>l'] = '<Cmd>BufferLineCycleNext<CR>',
			['<Leader>h'] = '<Cmd>BufferLineCyclePrev<CR>',
			['<Tab>'] = '<Cmd>BufferLineCycleNext<CR>',
			['<S-Tab>'] = '<Cmd>BufferLineCyclePrev<CR>',
			['<Leader>b'] = '<Cmd>BufferLinePick<CR>',
			['<Leader>w'] = '<Cmd>BufferLinePickClose<CR>',

			['<Leader>1'] = '<Cmd>BufferLineGoToBuffer 1<CR>',
			['<Leader>2'] = '<Cmd>BufferLineGoToBuffer 2<CR>',
			['<Leader>3'] = '<Cmd>BufferLineGoToBuffer 3<CR>',
			['<Leader>4'] = '<Cmd>BufferLineGoToBuffer 4<CR>',
			['<Leader>5'] = '<Cmd>BufferLineGoToBuffer 5<CR>',
			['<Leader>6'] = '<Cmd>BufferLineGoToBuffer 6<CR>',
			['<Leader>7'] = '<Cmd>BufferLineGoToBuffer 7<CR>',
			['<Leader>8'] = '<Cmd>BufferLineGoToBuffer 8<CR>',
			['<Leader>9'] = '<Cmd>BufferLineGoToBuffer 9<CR>',

			['<Esc>'] = '<Cmd>noh<CR><Esc>',
			['<C-s>'] = '<Cmd>w<CR>',

			-- move window
			['<C-h>'] = '<C-w>h',
			['<C-j>'] = '<C-w>j',
			['<C-k>'] = '<C-w>k',
			['<C-l>'] = '<C-w>l',

			['<Leader>ff'] = '<cmd>lua require(\'telescope.builtin\').find_files()<CR>',

			['<Leader>n'] = '<Cmd>NvimTreeToggle<CR>',
			['<Leader>r'] = '<Cmd>NvimTreeRefresh<CR>',

			['<'] = '<<^',
			['>'] = '>>^',

			['<Leader>cp'] = '"+p',
			['<Leader>cy'] = '"+y<CR>',

			['<Leader>;'] = '<Cmd>Alpha<CR>',

			['<Leader>t'] = '<Cmd>TagbarToggle<CR>',

			['<Leader>`'] = '<Cmd>tabnew<CR><Cmd>terminal<CR><Cmd>startinsert<CR>',
			['<Leader>rn'] = '<Cmd>lua require("renamer").rename()<CR>',
		},
		['v'] = {},
		['i'] = {
			['jk'] = '<Esc>',
			['<C-s>'] = '<Esc><Cmd>w<CR>a',
			['<C-h>'] = '<Left>',
			['<C-l>'] = '<Right>',
			['<C-j>'] = '<Down>',
			['<C-k>'] = '<Up>',
			['<F2>'] = '<Cmd>lua require("renamer").rename()<CR>',
		},
		['o'] = {
			['}'] = 'a{',
			[')'] = 'a)',
			[']'] = 'a]',
		},
		['t'] = {
			['<Esc>'] = '<C-\\><C-n><Cmd>BufferLinePickClose<CR>',
		},
	}

	for k, v in pairs(mode_key_map) do
		for k_, v_ in pairs(v) do
			vim.api.nvim_set_keymap(k, k_, v_, default_opts)
		end
	end
end

set_key_map()

-- redefind comment
vim.api.nvim_set_keymap('', '<Leader>/', 'gcc', {})
vim.api.nvim_set_keymap('', '<Leader>\\', 'gb', {})
vim.api.nvim_set_keymap('', 'U', '<C-r>', {})

vim.cmd [[
" set
autocmd TermEnter term://*toggleterm#* tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
]]
