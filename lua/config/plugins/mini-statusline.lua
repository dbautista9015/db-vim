-- Minimal and fast statusline module with opinionated default look
-- Part of 'mini.nvim' library.
return {
  {
    'nvim-mini/mini.statusline',
    version = false,
    config = function()
      require('mini.statusline').setup()
    end
  },
}

