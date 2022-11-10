local function ntree_setup()
  -- set termguicolors to enable highlight groups
  vim.opt.termguicolors = true
  -- OR setup with some options
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    -- disable_netrw = true,
    view = {
      adaptive_size = true,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })
end

ntree_setup()
