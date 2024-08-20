return require("lazy").setup({
    "Pocco81/auto-save.nvim",

    "Djancyp/better-comments.nvim",

    "ellisonleao/glow.nvim",

    "junegunn/goyo.vim",

    "lewis6991/impatient.nvim",

    "shaunsingh/nord.nvim",

    "xiyaowong/nvim-transparent",

    "nvim-treesitter/playground",

    "mrjones2014/smart-splits.nvim",

    "mg979/vim-visual-multi",

    "windwp/nvim-ts-autotag",

    {"lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}},

    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    {
        "nvim-lualine/lualine.nvim",
        dependencies = "kyazdani42/nvim-web-devicons"
    },

    {
        "alvarosevilla95/luatab.nvim",
        dependencies ="kyazdani42/nvim-web-devicons"
    },

    {
        "nvim-telescope/telescope.nvim", version = "0.1.6",
        dependencies = { {"nvim-lua/plenary.nvim"} }
    },

    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },

    {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        config = true,
    },

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    {
        "akinsho/toggleterm.nvim", version = "*",
        config = function()
            require("toggleterm").setup()
        end
    },


    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify"
        }
    },

    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function ()
            require"alpha".setup(require"alpha.themes.startify".config)
        end
    },

    {
        "nvim-neorg/neorg",
        dependencies = { "luarocks.nvim", "nvim-treesitter" },
        lazy = false,
        version = "*",
        config = function ()
            require("neorg").setup({
                load = {
                    ["core.defaults"] = {},
                    ["core.concealer"] = {
                        config = {
                            icon_preset = "diamond"
                        }
                    },
                    ["core.dirman"] = {
                        config = {
                            workspaces = {
                                notes = "~/notes"
                            }
                        }
                    }
                }
            })
        end,
    },

    {
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
    }
})

