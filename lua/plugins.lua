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
  { 'prettier/vim-prettier' },
  -- { 'mfussenegger/nvim-dap' },
  -- { 'akinsho/toggleterm.nvim' },
  { 'marko-cerovac/material.nvim' },
  { 'projekt0n/github-nvim-theme' },
  { 'shaunsingh/solarized.nvim' },

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
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    --run = ':TSUpdate'
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
