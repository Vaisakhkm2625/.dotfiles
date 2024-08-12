return {
    { "folke/noice.nvim", enabled = true },
    { "folke/zen-mode.nvim", enabled = true },
    { "HiPhish/nvim-ts-rainbow2", enabled = true },
    { "yuratomo/w3m.vim", enabled = false},
    {
        "OXY2DEV/markview.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- Used by the code bloxks
        },

        config = function ()
            require("markview").setup();
        end
    },


    {  "norcalli/nvim-colorizer.lua",
        config = function()
            require("neo-tree").setup()
        end,
        lazy = false
    },
    { "williamboman/mason.nvim", opts = { PATH = "append" } },

    {
        "tpope/vim-abolish",
    },

    {
        "codethread/qmk.nvim",
        enabled = false,
        config = function()
            ---@type qmk.UserConfig
            local conf = {
                name = 'LAYOUT_preonic_grid',
                layout = {
                    '_ x x x x x x _ x x x x x x',
                    '_ x x x x x x _ x x x x x x',
                    '_ x x x x x x _ x x x x x x',
                    '_ _ _ _ x x x _ x x x _ _ _',
                },
                variant = 'zmk'
            }
            require('qmk').setup(conf)
        end,
    },


    -- disabling flash
    {
        "folke/flash.nvim",
        enabled = false, 

        keys = {
            { "s", false },
        }
    },

    {

        "eandrju/cellular-automaton.nvim"
    },
    {
        "m4xshen/hardtime.nvim",
        enabled = false,
        dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
        opts = {}
    },

    {
        "echasnovski/mini.animate"

    },


    { "alec-gibson/nvim-tetris", enabled = true},
    { "KilianVounckx/nvim-tetris", enabled = false},-- with hjkl support, buggy

    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    -- {
    --   "sourcegraph/sg.nvim",
    --   build = "cargo build --workspace",
    --   dependencies = { "nvim-lua/plenary.nvim" },
    -- },

    -- QML support 
    {
        "peterhoeg/vim-qml",
        event = "BufRead",
        ft = { "qml" },
    },


}
