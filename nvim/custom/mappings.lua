---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
  -- c = {
  --   -- close all buffers + hide terminal buffer
  --   ["<leader><Del>"] = {
  --     function()
  --       require("nvchad.tabufline").closeAllBufs()
  --     end,
  --     "Close all buffers",
  --   },
  -- }
}

-- more keybinds!

return M
