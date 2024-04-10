return {
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        ft = "norg",
        keys = {
            { "<leader>nw", "<cmd>Neorg workspace<cr>", desc = "Neorg workspaces" },
            { "<leader>ni", "<cmd>Neorg index<cr>", desc = "Neorg index" },
        },

        opts = {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = { -- Adds pretty icons to your documents
                    icon_preset = "diamond"
                }, 
                ["core.summary"] = {},
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                            work_notes = "~/work_notes",
                        },
                        default_workspace = "notes",
                    },
                },
                ["core.integrations.image"] = {},

                ["core.keybinds"] = {
                    config = {
                        hook = function(keybinds)
                            keybinds.remap_event("norg", "n", "<LocalLeader>l", "core.looking-glass.magnify-code-block")
                        end
                    }
                },

                ["core.export"] = {}

                --["core.latex.renderer"] = {},
                -- ["core.presenter"] = {
                --            zen_mode = "zen-mode"
                --        },

            },
        },
        dependencies = {
            { "nvim-lua/plenary.nvim" },
        },
    },
    {
        "folke/zen-mode.nvim",
    },
    {
        "jbyuki/nabla.nvim",
        keys = {
            {
                "<leader>n",
                desc = "Notes",
            },
            {
                "<leader>nl",
                function()
                    require("nabla").popup()
                end,
                desc = "Notation",
            },
        },
        config = function()
            require("nabla").enable_virt()
        end,
    },
    {
        'chomosuke/typst-preview.nvim',
        lazy = false, -- or ft = 'typst'
        version = '0.1.*',
        build = function() require 'typst-preview'.update() end,
    }

}




--[[
-- image
--
--

  {
    "jbyuki/nabla.nvim",
    opts = {
      autogen = true, -- auto-regenerate ASCII art when exiting insert mode
      silent = true, -- silents error messages
    },
  },
--
--
clipsub({
    "postfen/clipboard-image.nvim",
    cmd = { "PasteImg" },
    lazy = true,
    config = conf.clipboardimage,
})
norg = {
            img_name = img_func,
            img_dir = "img",
            img_dir_txt = "img",
            affix = "!{%s}[image]",
        },

]]

--[[
--
use({
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
  end,
})
--
--
--]]
