-- setup must be called before loading the colorscheme
-- Default options:
-- setup for gruvbox-baby
-- vim.g.gruvbox_baby_transparent_mode = 1
-- vim.g.gruvbox_baby_function_style = "NONE"
-- vim.g.gruvbox_baby_keyword_style = "italic"
-- vim.g.gruvbox_baby_background_color= "medium"

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

local colorscheme = "gruvbox"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

