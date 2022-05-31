local vim = G_VIM
vim.cmd [[packadd packer.nvim]]

local present, packer = pcall(require, "packer")
if not present then
	return
end

local config = {
	auto_clean = true,
	compile_on_sync = true,
	git = { clone_timeout = 6000 },
	display = {
		working_sym = "ﲊ",
		error_sym = "✗",
		done_sym = "﫟",
		removed_sym = "",
		moved_sym = "",
		open_fn = function()
			return require('packer.util').float({ border = 'double' })
		end
	}
}
packer.init(config)


local plugins = {
	{ 'wbthomason/packer.nvim' },
	{ 'Mofiqul/dracula.nvim' },
	{ 'navarasu/onedark.nvim' },
	{ 'nvim-lua/plenary.nvim' },
	{ 'kyazdani42/nvim-web-devicons' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/nvim-cmp' },
	-- { 'hrsh7th/cmp-vsnip' },
	-- { 'hrsh7th/vim-vsnip' },
	{ 'L3MON4D3/LuaSnip' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{ 'numToStr/Comment.nvim' },
	{ 'preservim/tagbar' },
	{ 'simrat39/rust-tools.nvim' },
	{ 'justinmk/vim-sneak' },
	{ 'williamboman/nvim-lsp-installer' },
	{ 'neovim/nvim-lspconfig' },
	{ 'folke/todo-comments.nvim' },
	{ 'windwp/nvim-autopairs' },
	{ 'lukas-reineke/indent-blankline.nvim' },
	{ 'akinsho/toggleterm.nvim' },

	{
		'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = { { 'kyazdani42/nvim-web-devicons' } }
	},
	{
		'nvim-lualine/lualine.nvim',
		requires = { { 'kyazdani42/nvim-web-devicons', opt = true } }
	},
	{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	},
	{
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	},
	{
		'kyazdani42/nvim-tree.lua',
		requires = { { 'kyazdani42/nvim-web-devicons' } }
	},
	{
		'goolord/alpha-nvim',
		requires = { { 'kyazdani42/nvim-web-devicons' } }
	},
	{
		'filipdutescu/renamer.nvim',
		branch = 'master',
		requires = { { 'nvim-lua/plenary.nvim' } }
	},
}
packer.startup({ function(use)
	for _, v in pairs(plugins) do
		use(v)
	end
end })

-- require('plugin_config')

local do_setup = function()
	require('config.lsp_installer')
	require('config.lsp_config')
	require('config.cmp_config')
	require('config.nvimtree')
	require('config.treesitter')
	require('config.lualine')
	require('config.bufferline')
	-- require('plugin_config.config.tagbar')
	require('config.onedark')
	-- require('plugin_config.config.rust_tools')


	require('indent_blankline').setup()
	require('nvim-autopairs').setup({
		disable_in_visualblock = true
	})
	require('todo-comments').setup()
	require('toggleterm').setup()
	require('alpha').setup(require('alpha.themes.startify').config)
	require("Comment").setup({
		extra = {
			eol = 'gca', ---Add comment at the end of line
		} })

	require('renamer').setup({
		title = '*RENAME*',
		min_width = 30,
		max_width = 50
	})

	--[[
eg:
PERF:
HACK:
TODO:
NOTE:
FIX:
BUG:
ISSUE:
FIXME:
FIXIT:
WARNING:

cmd:
:TodoQuickFix
:TodoLocList
:TodoTrouble
:TodoTelescope
]]
end

do_setup()
