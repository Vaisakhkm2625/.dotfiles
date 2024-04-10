return {
    { "folke/noice.nvim", enabled = true },
    { "folke/zen-mode.nvim", enabled = true },
    { "HiPhish/nvim-ts-rainbow2", enabled = true },


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


    { "alec-gibson/nvim-tetris", enabled = false },
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
