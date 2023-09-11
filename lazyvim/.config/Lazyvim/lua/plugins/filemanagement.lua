return {
  {
    "ThePrimeagen/harpoon",

    keys = {
      {
        "<leader>m",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "add mark to harpoon",
      },
      {
        "<leader>hu",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "toggle harpoon ui",
      },
      {
        "<leader>1",
        function()
          require("harpoon.ui").nav_file(1)
        end,
        desc = "harpoon file 1",
      },
      {
        "<leader>2",
        function()
          require("harpoon.ui").nav_file(2)
        end,
        desc = "harpoon file 2",
      },
      {
        "<leader>3",
        function()
          require("harpoon.ui").nav_file(3)
        end,
        desc = "harpoon file 3",
      },
      {
        "<leader>4",
        function()
          require("harpoon.ui").nav_file(4)
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
