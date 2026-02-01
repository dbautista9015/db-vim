return {
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker'
      }
      require('onedark').load()
    end
  }
}
