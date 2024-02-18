-- Install Lazy.nvim if not installed already
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Download Plugins
require('lazy').setup({

	-- Automatically add plugins from `lua/plugins_list/*.lua`
	{ import = 'plugins_list' },
	
}, {})

-- Note: 
-- 1) To add a new Plugin, create a lua file in 'lua/plugins_list/*.lua'
-- 2) To setup/configure, create a lua file in 'lua/plugins_setup/*.lua'

