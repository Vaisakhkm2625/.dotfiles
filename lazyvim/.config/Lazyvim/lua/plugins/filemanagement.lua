return {
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        opts = {
            global_settings = {
                tabline = false,
                tabline_prefix = "   ",
                tabline_suffix = "   ",
            },
            menu = {
                width = vim.api.nvim_win_get_width(0) - 10,
            },
        },

        dependencies = { 
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        },

        keys = {
            {
                "<leader>m",
                function()
                    require("harpoon"):list():append()
                end,
                desc = "add mark to harpoon",
            },
            {
                "<leader>hh",
                function()
                    harpoon = require("harpoon")
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = "toggle harpoon ui",
            },
            {
                "<leader>1",
                function()
                    require("harpoon"):list():select(1)
                end,
                desc = "harpoon file 1",
            },
            {
                "<leader>2",
                function()
                    require("harpoon"):list():select(2)
                end,
                desc = "harpoon file 2",
            },
            {
                "<leader>3",
                function()
                    require("harpoon"):list():select(3)
                end,
                desc = "harpoon file 3",
            },
            {
                "<leader>4",
                function()
                    require("harpoon"):list():select(4)
                end,
                desc = "harpoon file 4",
            },
            {
                "<leader>hc",
                function()
                    require("harpoon.cmd-ui").toggle_quick_menu()
                end,
                desc = "harpoon command ui",
            },
            {
                "<leader>h1",
                function()
                    require("harpoon.tmux").sendCommand(1, 1)
                end,
                desc = "harpoon sent command to 1 buffer",
            },
            {
                "<leader>h2",
                function()
                    require("harpoon.tmux").sendCommand(1, 1)
                end,
                desc = "harpoon sent command to 2 buffer",
            },
        },
        --      lazy = false,


    },
}

--[[

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-t>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-n>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-s>", function()
  ui.nav_file(4)
end)]]
