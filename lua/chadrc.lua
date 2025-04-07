-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "nightowl",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = { load_on_startup = true }
M.ui = {
  statusline = {
    theme = "default",
    separator_style = "arrow",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "lsp", "cwd"},
    modules = {
      file = "%f"
      --   xyz = function()
      --     return "hello world"
      --   end,
    },
  },

  tabufline = {
    lazyload = false,
  },
  vim.opt.foldmethod == "expr",
  vim.opt.foldexpr == "nvim_treesitter#foldexpr()",
  vim.opt.foldenable == true,
  vim.opt.foldlevel == 99,
}

return M
