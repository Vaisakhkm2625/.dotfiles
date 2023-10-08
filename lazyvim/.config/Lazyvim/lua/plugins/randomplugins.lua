return {
  { "folke/noice.nvim", enabled = true },
  { "alec-gibson/nvim-tetris", enabled = false },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  -- {
  --   "sourcegraph/sg.nvim",
  --   build = "cargo build --workspace",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  -- },
}