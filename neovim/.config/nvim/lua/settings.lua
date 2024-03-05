-- [[ Setting options ]]

vim.wo.number		= true		-- Make line numbers default
vim.wo.relativenumber	= true	-- Relative Numbering
vim.wo.signcolumn	= 'yes'		-- Keep signcolumn on by default
vim.opt.cursorline	= true		-- Cursor Line

vim.o.mouse			= 'a'		-- Enable mouse mode
vim.o.clipboard		= 'unnamedplus'	-- Sync clipboard from OS.
vim.o.undofile		= true		-- Save undo history

vim.o.tabstop		= 4			-- Tab stuff
vim.o.shiftwidth	= 4
vim.o.breakindent	= true		-- Enable break indent

vim.o.updatetime	= 250		-- Decrease update time
vim.o.timeoutlen	= 300

vim.o.hlsearch		= false		-- Set highlight on search
vim.o.ignorecase	= true		-- Case-insensitive searching
vim.o.smartcase		= true		-- Unless \C or capital in search

vim.o.termguicolors = true		-- Theming


-- To learn about an option, see the "help" command. Example:
-- :help vim.o
-- :help clipboard