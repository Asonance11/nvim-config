-- Alpha-nvim dashboard
-- https://github.com/goolord/alpha-nvim

vim.pack.add {
  'https://github.com/goolord/alpha-nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  { src = 'https://github.com/MaximilianLloyd/ascii.nvim' },
  'https://github.com/MunifTanjim/nui.nvim',
}

local alpha = require 'alpha'
local ascii = require 'ascii'
local dashboard = require 'alpha.themes.dashboard'

dashboard.section.header.val = ascii.get_random('anime', 'onepiece')

dashboard.section.buttons.val = {
  dashboard.button('f', '  > Find Files', ':Telescope find_files<CR>'),
  dashboard.button('g', '  > Live Grep', ':Telescope live_grep<CR>'),
  dashboard.button('r', '  > Recent Files', ':Telescope oldfiles<CR>'),
  -- dashboard.button('b', '  > Buffers', ':Telescope buffers<CR>'),
  -- dashboard.button('h', '  > Help Tags', ':Telescope help_tags<CR>'),
  -- dashboard.button('k', '⌨   > Keymaps', ':Telescope keymaps<CR>'),
  dashboard.button('e', '  > File Explorer', ':Neotree toggle<CR>'),
  -- dashboard.button('c', '  > Config', ':e $MYVIMRC<CR>'),
  dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
}

alpha.setup(dashboard.opts)
