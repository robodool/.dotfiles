require("toggleterm").setup({
	size = 13,
	open_mapping = [[<c-\>]],
	shade_filetypes = {},
	shade_terminal = true,
	shading_factor = 1,
	start_in_insert = true,
	persist_size = true,
	direction = "horizontal",
	autochdir = true,
})

vim.api.nvim_set_keymap('n', '<leader>fj', ':ToggleTerm<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader>fj', 'exit<CR>', {})
