local vim = vim

local function set_key_map()
  local default_opts = { noremap = true, silent = true }

  local mode_key_map = {
    -- [''] = {},

    ['n'] = {
      ['<Leader>l'] = '<Cmd>BufferLineCycleNext<CR>',
      ['<Leader>h'] = '<Cmd>BufferLineCyclePrev<CR>',
      ['<Tab>'] = '<Cmd>BufferLineCycleNext<CR>',
      ['<S-Tab>'] = '<Cmd>BufferLineCyclePrev<CR>',
      ['<Leader>w'] = '<Cmd>BufferLinePickClose<CR>',
      ['U'] = '<C-r>',
      ['G'] = 'Gzz',

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

      -- Telescope
      ['<Leader>ff'] = '<Cmd> Telescope find_files<CR>',
      ['<Leader>fg'] = '<Cmd> Telescope live_grep<CR>',
      ['<Leader>fb'] = '<Cmd> Telescope buffers<CR>',

      ['<Leader>t'] = '<Cmd>NvimTreeToggle<CR>',
      ['<Leader>r'] = '<Cmd>NvimTreeRefresh<CR>',

      ['<'] = '<<^',
      ['>'] = '>>^',

      ['<Leader>cp'] = '"+p',
      ['<Leader>cy'] = '"+y<CR>',


      ['<C-t>'] = '<Cmd>TagbarToggle<CR>',

      ['<Leader>`'] = '<Cmd>tabnew<CR><Cmd>terminal<CR><Cmd>startinsert<CR>',

      ['<Leader>j'] = '<Cmd>lua require("material.functions").toggle_style()<CR>',

      -- hop
      ['s'] = '<Cmd>HopLine<CR>'
    },

    ['v'] = {
      ['"'] = 'xi"<Esc>pa"<Esc>',
      ['\''] = 'xi\'<Esc>pa\'<Esc>',
      [')'] = 'xi(<Esc>pa)<Esc>',
      ['('] = 'xi(<Esc>pa)<Esc>',
      [']'] = 'xi[<Esc>pa]<Esc>',
      ['['] = 'xi[<Esc>pa]<Esc>',
      ['<'] = 'xi<<Esc>pa><Esc>',
      ['>'] = 'xi<<Esc>pa><Esc>',
      ['{'] = 'xi{<Esc>pa}<Esc>',
      ['}'] = 'xi{<Esc>pa}<Esc>',
    },

    ['i'] = {
      ['<C-s>'] = '<Esc><Cmd>w<CR>a',
      ['<C-h>'] = '<Left>',
      ['<C-l>'] = '<Right>',
      ['<C-j>'] = '<Down>',
      ['<C-k>'] = '<Up>',
    },

    ['o'] = {
      -- you can use this to delete block inside
      -- eg: d{, can delete text in {} block, include {}
      -- eg: y}, yank only text in {} block
      ['{'] = 'aB',
      ['}'] = 'iB',
      ['('] = 'ab',
      [')'] = 'ib',
      ['['] = 'a[',
      [']'] = 'i[',
      ['<'] = 'a<',
      ['>'] = 'i<',
      ['"'] = 'a"',
      ['\''] = 'a\'',
    },

    ['t'] = {
      ['<Esc>'] = '<C-\\><C-n>',
      ['<C-w>'] = '<C-\\><C-n><Cmd>BufferLinePickClose<CR>z'
    },
  }

  for k, v in pairs(mode_key_map) do
    for k_, v_ in pairs(v) do
      vim.api.nvim_set_keymap(k, k_, v_, default_opts)
    end
  end
end

set_key_map()
