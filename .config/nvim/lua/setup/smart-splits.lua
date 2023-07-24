require('smart-splits').setup({})

-- resizing splits in normal mode
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
--resizing splits in terminal mode
vim.keymap.set('t', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('t', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('t', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('t', '<A-l>', require('smart-splits').resize_right)

-- moving between splits in normal mode
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
--moving between splits in terminal mode
vim.keymap.set('t', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('t', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('t', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('t', '<C-l>', require('smart-splits').move_cursor_right)
