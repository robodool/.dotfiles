require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust" },

    sync_install = false,

    auto_install = true,

    ignore_install = { "javascript" },


    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    rainbow = {
        enable = true,
        extended_mode = true, 
        max_file_lines = nil,
        colors = {
            "#FFFF00",
            "#8F00FF",
            "#0000FF"
        },
        termcolors = {
            "Yellow",
            "Violet",
            "Blue"
        },
    }
}
