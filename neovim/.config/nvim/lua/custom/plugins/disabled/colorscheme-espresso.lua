-- GruvBox: Le Theme
return {

  -- GitHub URL
  'sainnhe/sonokai',
  name = 'sonokai',
  lazy = false,
  priority = 1000,

  -- Start + Config
  config = function()
    vim.g.sonokai_style = 'espresso'
    vim.cmd.colorscheme 'sonokai'
  end,
}
