return {
  {
    "vhyrro/hologram.nvim",
    enabled = false,
    config = function()
      require("hologram").setup({
        auto_display = false,
      })
    end,
  },

  {
    "3rd/image.nvim",
    enabled = true,
    opts = {
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
          sizing_strategy = "auto",
          download_remote_images = true,
          clear_in_insert_mode = false,
        },
        neorg = {
          enabled = true,
          download_remote_images = true,
          clear_in_insert_mode = false,
        },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      kitty_method = "normal",
      kitty_tmux_write_delay = 10, -- makes rendering more reliable with Kitty+Tmux
      window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
}

-- -- return {
--   {
--     "edluffy/hologram.nvim",
--     --enabled = false,
--     config = function()
--       require("hologram").setup({
--         auto_display = true,
--       })
--     end,
--   },
-- }
