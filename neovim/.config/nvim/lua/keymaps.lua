-- [[ Basic Keymaps ]]
-- See `:help vim.keymap.set()`

-- Source .vimrc
vim.keymap.set('n', 'so', ':source $MYVIMRC<CR>', { desc = "Source the init.lue file"})

-- Edit .vimrc
vim.keymap.set('n', 'av', ':e $MYVIMRC<CR>', { desc = "Edit the init.lua file"})

-- Enter key to change word
vim.keymap.set('n', '<cr>', 'ciw', { desc = "Press Enter to change word"})

-- Tab stuff
vim.keymap.set('n', 'tt', ':tabnew<CR>', { desc = "Create new tab"})
vim.keymap.set('n', 'tq', ':tabclose<CR>', { desc = "Quit tab"})
vim.keymap.set('n', 'tn', ':tabnext<CR>', { desc = "Next tab"})
vim.keymap.set('n', 'tp', ':tabprevious<CR>', { desc = "Prev. tab"})