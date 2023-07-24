vim.cmd [[ set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab ]]

vim.cmd [[ set fo-=cro ]]

vim.cmd [[ au BufWinEnter * set formatoptions-=cro ]]

vim.cmd [[ au BufNewFile,BufRead /*.rasi setf css ]]

vim.cmd [[ colorscheme everforest ]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true

vim.o.cursorline = true

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})
vim.api.nvim_set_keymap('i', 'fj', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sl', ':qa<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'nh', ':noh<CR>', { noremap = true })

local setup = {
    'setup/lualine',
    'setup/bufferline',
    'setup/playground',
    'setup/toggleterm',
    'setup/transparent',
    'setup/tree',
    'setup/treesitter',
    'setup/lsp-zero',
    'setup/autopairs',
    'setup/telescope',
    'setup/indent-blankline',
    'setup/impatient',
    'setup/glow',
    'setup/smart-splits',
    'setup/better-comments',
    'setup/vim-visual-multi',
}

require('plugins')
for i, v in pairs(setup) do
    require(v)
end
