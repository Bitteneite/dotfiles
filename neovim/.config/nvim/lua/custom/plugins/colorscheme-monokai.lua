-- GruvBox: Le Theme
return {

  -- GitHub URL
  'loctvl842/monokai-pro.nvim',
  lazy = false,
  priority = 1000,

  -- Start + Config
  config = function()
    require('monokai-pro').setup {
      filter = 'classic', -- classic | octagon | pro | machine | ristretto | spectrum
      -- Enable this will disable filter option
    }
    vim.cmd.colorscheme 'monokai-pro'
  end,
}
