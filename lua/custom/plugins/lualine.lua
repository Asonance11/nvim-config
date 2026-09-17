-- lualine.nvim 
vim.pack.add {
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
}

local transparent = {
  normal = {
    a = { bg = 'none' },
    b = { bg = 'none' },
    c = { bg = 'none' },
  },
  insert = { a = { bg = 'none' }, b = { bg = 'none' }, c = { bg = 'none' } },
  visual = { a = { bg = 'none' }, b = { bg = 'none' }, c = { bg = 'none' } },
  replace = { a = { bg = 'none' }, b = { bg = 'none' }, c = { bg = 'none' } },
  command = { a = { bg = 'none' }, b = { bg = 'none' }, c = { bg = 'none' } },
  inactive = { a = { bg = 'none' }, b = { bg = 'none' }, c = { bg = 'none' } },
}

require('lualine').setup {
  options = {
    theme = transparent,
    component_separators = '',
    section_separators = '',
  },
}
