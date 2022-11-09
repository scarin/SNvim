local vim = vim
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
  { 'navarasu/onedark.nvim' },
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-tree/nvim-web-devicons' },
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
  { 'justinmk/vim-sneak' },
  { 'williamboman/nvim-lsp-installer' },
  { 'neovim/nvim-lspconfig' },
  { 'folke/todo-comments.nvim' },
  { 'windwp/nvim-autopairs' },
  { 'lukas-reineke/indent-blankline.nvim' },
  -- { 'prettier/vim-prettier' },
  { 'marko-cerovac/material.nvim' },

  {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = { { 'nvim-tree/nvim-web-devicons' } }
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { { 'nvim-tree/nvim-web-devicons', opt = true } }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  },
  {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  },
  {
    'nvim-tree/nvim-tree.lua',
    requires = { { 'nvim-tree/nvim-web-devicons' } }
  },
  {
    'goolord/alpha-nvim',
    requires = { { 'nvim-tree/nvim-web-devicons' } }
  },
}

packer.startup({ function(use)
  for _, v in pairs(plugins) do
    use(v)
  end
end })
