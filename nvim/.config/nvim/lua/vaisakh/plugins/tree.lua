return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	init = function()
		if vim.fn.argc() == 1 then
			local stat = vim.loop.fs_stat(vim.fn.argv(0))
			if stat and stat.type == "directory" then
				require("neo-tree")
			end
		end
	end,
	keys = {
		--[[ {
			"<leader>fe",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
			end,
			desc = "Explorer NeoTree (root dir)",
		}, ]]
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
			end,
			desc = "Explorer (cwd)",
		},
		--{ "<leader>E", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
	},
}
