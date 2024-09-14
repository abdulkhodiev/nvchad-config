-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

-- This file needs to have the same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark", -- Set the theme to Kanagawa
  transparency = true, -- Enable transparency
  statusline = {
    theme = "vscode_colored", -- Set the statusline theme to vscode_colored
  },
  nvdash = {
    load_on_startup = true, -- Load the dashboard on startup
    header = {
      "███╗   ██╗███████╗ ██████╗ ",
      "████╗  ██║██╔════╝██╔═══██╗",
      "██╔██╗ ██║█████╗  ██║   ██║",
      "██║╚██╗██║██╔══╝  ██║   ██║",
      "██║ ╚████║███████╗╚██████╔╝",
      "╚═╝  ╚═══╝╚══════╝ ╚═════╝ ",
    },
  },

  hl_override = {
    Comment = { italic = true }, -- Make comments italic
    ["@comment"] = { italic = true }, -- Make @comment nodes italic
    DiffChange = {
      bg = "#464414", -- Background color for DiffChange
      fg = "none", -- No foreground color for DiffChange
    },
    DiffAdd = {
      bg = "#103507", -- Background color for DiffAdd
      fg = "none", -- No foreground color for DiffAdd
    },
    DiffRemoved = {
      bg = "#461414", -- Background color for DiffRemoved
      fg = "none", -- No foreground color for DiffRemoved
    },
  },
}

M.plugins = {
  -- Ensure Tree-sitter is installed and configured correctly
  treesitter = {
    ensure_installed = {
      "html",
      "javascript",
      "typescript",
      "tsx",
      "vue",
      "xml", -- Add languages as needed
    },
    highlight = { enable = true },
    indent = { enable = true },
    autotag = { enable = true }, -- Explicitly enable autotag
  },
}
return M
