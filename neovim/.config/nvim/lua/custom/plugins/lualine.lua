-- Set lualine as statusline
return {

  -- GitHub URL
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  -- Start + Config
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'powerline',
      },
    }
  end,
}
