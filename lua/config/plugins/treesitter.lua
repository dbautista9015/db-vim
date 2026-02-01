-- Nvim-treesitter provides functionalities for managing treesitter parsers and
-- compatible queries for core features (highlighting, injections, folds,
-- indents).
return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local filetypes = {
        'bash',
        'c',
        'diff',
        'go',
        'html',
        'javascript',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'python',
        'query',
        'vim',
        'vimdoc'
      }
      require('nvim-treesitter').install(filetypes)
      vim.api.nvim_create_autocmd('FileType', {
        pattern = filetypes,
        callback = function() vim.treesitter.start() end,
      })
    end,
  },
}
