return {
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },

    {
        "navarasu/onedark.nvim",

        -- opts = {
        --   transparent = true,
        -- },
    },
    -- {
    --   "xiyaowong/transparent.nvim",
    --   opts = {
    --     groups = { -- table: default groups
    --       "Normal",
    --       "NormalNC",
    --       "Comment",
    --       "Constant",
    --       "Special",
    --       "Identifier",
    --       "Statement",
    --       "PreProc",
    --       "Type",
    --       "Underlined",
    --       "Todo",
    --       "String",
    --       "Function",
    --       "Conditional",
    --       "Repeat",
    --       "Operator",
    --       "Structure",
    --       "LineNr",
    --       "NonText",
    --       "SignColumn",
    --       "CursorLineNr",
    --       "EndOfBuffer",
    --     },
    --     extra_groups = {
    --       "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    --       "NvimTreeNormal", -- NvimTree
    --     },
    --     exclude_groups = {}, -- table: groups you don't want to clear
    --   },
    -- },
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#000000",
            --render = "compact",
            top_down = false,
            --     timeout = 3000,
            --     stages = "fade",
        },


    },

}
