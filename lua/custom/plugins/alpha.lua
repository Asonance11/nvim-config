return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    { 'MaximilianLloyd/ascii.nvim', dependencies = { 'MunifTanjim/nui.nvim' } },
  },
  config = function()
    local alpha = require 'alpha'
    local ascii = require 'ascii'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = ascii.get_random('anime', 'onepiece')

    dashboard.section.buttons.val = {
      dashboard.button('f', '  > Find Files', ':Telescope find_files<CR>'),
      dashboard.button('g', '  > Live Grep', ':Telescope live_grep<CR>'),
      dashboard.button('r', '  > Recent Files', ':Telescope oldfiles<CR>'),
      -- dashboard.button('b', '  > Buffers', ':Telescope buffers<CR>'),
      -- dashboard.button('h', '  > Help Tags', ':Telescope help_tags<CR>'),
      -- dashboard.button('k', '⌨   > Keymaps', ':Telescope keymaps<CR>'),
      dashboard.button('e', '  > File Explorer', ':Neotree toggle<CR>'),
      -- dashboard.button('c', '  > Config', ':e $MYVIMRC<CR>'),
      dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
    }

    alpha.setup(dashboard.opts)
  end,
}
