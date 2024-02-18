-- [[ Setting options ]]
-- See `:help vim.o`

vim.o.hlsearch = false			-- Set highlight on search
vim.wo.number = true			-- Make line numbers default
vim.o.mouse = 'a'				-- Enable mouse mode
vim.opt.cursorline = true		-- Cursor Line
vim.o.clipboard = 'unnamedplus'	-- Sync clipboard between OS and Neovim.
vim.o.breakindent = true		-- Enable break indent
vim.o.undofile = true			-- Save undo history
vim.o.ignorecase = true			-- Case-insensitive searching
vim.o.smartcase = true			-- Unless \C or capital in search
vim.wo.signcolumn = 'yes'		-- Keep signcolumn on by default
vim.wo.relativenumber = true
vim.o.updatetime = 250			-- Decrease update time
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
