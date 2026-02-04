return {
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- optional but recommended
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require('telescope').setup({})
      local builtin = require('telescope.builtin')
      vim.keymap.set(
        'n',
        '<leader>sf',
        builtin.find_files,
        { desc = 'Telescope find files' }
      )
      vim.keymap.set(
        'n',
        '<space>sg',
        builtin.live_grep,
        { desc = 'Telescope live grep' }
      )
      vim.keymap.set(
        'n',
        '<space>sb',
        builtin.buffers,
        { desc = 'Telescope buffers' }
      )
      vim.keymap.set(
        'n',
        '<space>sh',
        builtin.help_tags,
        { desc = 'Telescope help tags' }
      )
    end
  }
}
