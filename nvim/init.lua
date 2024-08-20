vim.cmd [[set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab]]

vim.cmd [[set background=dark]]
vim.cmd [[colorscheme nord]]

vim.cmd [[au BufNewFile,BufRead /*.rasi setf css]]
 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.number = true
vim.o.relativenumber = true

vim.opt.termguicolors = true

vim.o.cursorline = true

vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})
vim.api.nvim_set_keymap("i", "fj", "<ESC>", { noremap = true })
vim.api.nvim_set_keymap("n", "sl", ":qa<CR>", { noremap = true })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("auto-save").setup()

require("glow").setup({})

require("impatient")

require("ibl").setup()

vim.g.nord_italic = false

vim.api.nvim_set_keymap("n", "<C-q>", ":VMClear<CR>", { noremap = true })

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = {"*.norg"},
    command = "set conceallevel=3"
})

local setup = {
    "setup/autopairs",
    "setup/autotag",
    "setup/better-comments",
    "setup/lualine",
    "setup/lsp-zero",
    "setup/noice",
    "setup/notify",
    "setup/playground",
    "setup/smart-splits",
    "setup/telescope",
    "setup/toggleterm",
    "setup/transparent",
    "setup/tree",
    "setup/treesitter"
}

require("plugins")
for i, v in pairs(setup) do
    require(v)
end

