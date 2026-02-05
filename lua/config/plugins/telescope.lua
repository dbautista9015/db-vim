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
      require('telescope').setup({
        extensions = {
          fzf = {}
        }
      })

      require('telescope').load_extension('fzf')
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
      vim.keymap.set(
        'n',
        '<space>sdd',
        function()
          builtin.diagnostics({ bufnr = 0 })
        end,
        { desc = 'Telescope [S]earch [D]iagnostics [D]ocument' }
      )
      vim.keymap.set(
        'n',
        '<space>sdp',
        builtin.diagnostics,
        { desc = 'Telescope [S]earch [D]iagnostics [P]roject' }
      )
      vim.keymap.set(
        'n',
        '<space>sk',
        builtin.keymaps,
        { desc = 'Telescope [S]earch [K]eymaps' }
      )
      vim.keymap.set(
        'n',
        '<space>snc',
        function()
          builtin.find_files {
            cwd = vim.fn.stdpath("config")
          }
        end,
        { desc = 'Telescope [S]earch [N]eovim [C]onfig' }
      )
    end
  }
}
