-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load up the good stuff!
require("plugins")
require("keymaps")
require("settings")
--require("misc")