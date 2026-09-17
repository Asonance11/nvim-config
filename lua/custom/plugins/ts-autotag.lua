local function gh(repo) return 'https://github.com/' .. repo end

-- ts-autotag.nvim 
vim.pack.add { gh 'tronikelis/ts-autotag.nvim' }

require('ts-autotag').setup {
  auto_rename = {
    enabled = true,
  },
}

vim.keymap.set('n', '<leader>rn', function()
  if not require('ts-autotag').rename() then
    vim.lsp.buf.rename()
  end
end, { desc = 'Rename tag (fallback to LSP rename)' })
