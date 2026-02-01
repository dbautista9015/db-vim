-- Plugin to automatically manage character pairs.
-- Part of 'mini.nvim' library.
return {
  {
    'nvim-mini/mini.pairs',
    version = false,
    config = function()
      require("mini.pairs").setup()
    end
  },
}
